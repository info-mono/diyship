# DIYship {{{

zmodload zsh/parameter

export DIYSHIP_SHELL="zsh"

if [[ $ZSH_VERSION == ([1-4]*) ]]; then
	__diyship_get_time() {
		DIYSHIP_CAPTURED_TIME=$(date +%s%N | cut -c '-13')
	}
else
	zmodload zsh/datetime
	zmodload zsh/mathfunc
	__diyship_get_time() {
		(( DIYSHIP_CAPTURED_TIME = int(rint(EPOCHREALTIME * 1000)) ))
	}
fi

diyship_precmd() {
	export DIYSHIP_STATUS=$?

	DIYSHIP_PIPESTATUS_TEMPORARY=(${pipestatus[@]})
	export DIYSHIP_PIPESTATUS=${DIYSHIP_PIPESTATUS_TEMPORARY[@]}

	if (( ${+DIYSHIP_START_TIME} )); then
		__diyship_get_time && (( DIYSHIP_DURATION = DIYSHIP_CAPTURED_TIME - DIYSHIP_START_TIME )) && export DIYSHIP_DURATION="$DIYSHIP_DURATION"

		unset DIYSHIP_START_TIME
	else
		unset DIYSHIP_DURATION
	fi

	export DIYSHIP_JOBS=${#jobstates}
}
diyship_preexec() {
	__diyship_get_time && DIYSHIP_START_TIME=$DIYSHIP_CAPTURED_TIME
}

(( ! ${+precmd_functions} )) && precmd_functions=()
(( ! ${+preexec_functions} )) && preexec_functions=()

if [[ -z ${precmd_functions[(re)diyship_precmd]} ]]; then
	precmd_functions+=(diyship_precmd)
fi
if [[ -z ${preexec_functions[(re)diyship_preexec]} ]]; then
	preexec_functions+=(diyship_preexec)
fi

diyship_zle-keymap-select() {
	export DIYSHIP_KEYMAP="$KEYMAP"

	zle reset-prompt
}

__diyship_preserved_zle_keymap_select=${widgets[zle-keymap-select]#user:}
if [[ -z $__diyship_preserved_zle_keymap_select ]]; then
	zle -N zle-keymap-select diyship_zle-keymap-select;
else
	diyship_zle-keymap-select-wrapped() {
		$__diyship_preserved_zle_keymap_select "$@";
		diyship_zle-keymap-select "$@";
	}
	zle -N zle-keymap-select diyship_zle-keymap-select-wrapped;
fi

__diyship_get_time && DIYSHIP_START_TIME=$DIYSHIP_CAPTURED_TIME

VIRTUAL_ENV_DISABLE_PROMPT=1

setopt promptsubst
PROMPT="\$($DIYSHIP_COMMAND_LEFT)"
RPROMPT="\$($DIYSHIP_COMMAND_RIGHT)"

# }}}
