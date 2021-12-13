# DIYship {{{

export DIYSHIP_SHELL="bash"

diyship_preexec() {
	local PREV_LAST_ARG=${1}

	if [ "${DIYSHIP_PREEXEC_READY}" = "true" ]; then
		DIYSHIP_PREEXEC_READY=false
		DIYSHIP_START_TIME=$(date +%s%N | cut -c '-13')
	fi

	: "${PREV_LAST_ARG}"
}

diyship_precmd() {
	export DIYSHIP_STATUS=$?

	DIYSHIP_PIPESTATUS_TEMPORARY=(${PIPESTATUS[@]})
	if [[ "${#BP_PIPESTATUS[@]}" -gt "${#DIYSHIP_PIPESTATUS[@]}" ]]; then
		DIYSHIP_PIPESTATUS_TEMPORARY=(${BP_PIPESTATUS[@]})
	fi
	export DIYSHIP_PIPESTATUS=${DIYSHIP_PIPESTATUS_TEMPORARY[@]}

	DIYSHIP_JOBS=0
	for job in $(jobs -p); do
		[[ ${job} ]] && ((DIYSHIP_JOBS++))
	done
	export DIYSHIP_JOBS="${DIYSHIP_JOBS}"

	"${diyship_precmd_user_func-:}"

	eval "${_PRESERVED_PROMPT_COMMAND}"

	if [[ ${DIYSHIP_START_TIME} ]]; then
		DIYSHIP_END_TIME=$(date +%s%N | cut -c '-13')
		export DIYSHIP_DURATION=$((DIYSHIP_END_TIME - DIYSHIP_START_TIME))
	fi

	PS1="\$($DIYSHIP_COMMAND_LEFT)"

	unset DIYSHIP_START_TIME
	DIYSHIP_PREEXEC_READY=true
}

if [[ "${__bp_imported:-}" == "defined" || ${preexec_functions} || ${precmd_functions} ]]; then
	diyship_preexec_all(){ diyship_preexec "$_"; }
	preexec_functions+=(diyship_preexec_all)
	precmd_functions+=(diyship_precmd)
else
	dbg_trap="$(trap -p DEBUG | cut -d' ' -f3 | tr -d \')"
	if [[ -z "${dbg_trap}" ]]; then
		trap 'diyship_preexec "$_"' DEBUG
	elif [[ "${dbg_trap}" != 'diyship_preexec "$_"' && "${dbg_trap}" != 'diyship_preexec_all "$_"' ]]; then
		diyship_preexec_all() {
			local PREV_LAST_ARG=${1} ; ${dbg_trap}; diyship_preexec; : "${PREV_LAST_ARG}";
		}
		trap 'diyship_preexec_all "$_"' DEBUG
	fi

	if [[ -z "${PROMPT_COMMAND}" ]]; then
		PROMPT_COMMAND="diyship_precmd"
	elif [[ "${PROMPT_COMMAND}" != *"diyship_precmd"* ]]; then
		_PRESERVED_PROMPT_COMMAND="${PROMPT_COMMAND}"
		PROMPT_COMMAND="diyship_precmd"
	fi
fi

DIYSHIP_START_TIME=$(date +%s%N | cut -c '-13')

# }}}
