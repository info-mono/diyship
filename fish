# DIYship {{{

set -gx DIYSHIP_SHELL "fish"

set -g VIRTUAL_ENV_DISABLE_PROMPT 1

function fish_prompt
	set -gx DIYSHIP_STATUS $status
	set -gx DIYSHIP_PIPESTATUS $pipestatus
	set -gx DIYSHIP_DURATION "$CMD_DURATION$cmd_duration"
	set -gx DIYSHIP_JOBS (count (jobs -p))

	switch "$fish_key_bindings"
		case fish_hybrid_key_bindings fish_vi_key_bindings
			set -gx DIYSHIP_KEYMAP "$fish_bind_mode"
		case '*'
			set -gx DIYSHIP_KEYMAP insert
	end

	$DIYSHIP_COMMAND_LEFT
end

function fish_right_prompt
	$DIYSHIP_COMMAND_RIGHT
end
builtin functions -e fish_mode_prompt

# }}}
