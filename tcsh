# DIYship {{{

setenv DIYSHIP_SHELL tcsh;

set USER_PRECMD = "`alias precmd`";
set USER_POSTCMD = "`alias postcmd`";

set DIYSHIP_PRECMD = 'setenv DIYSHIP_STATUS $status; set DIYSHIP_END_TIME = `date +%s%N | cut -c '-13'`; set DIYSHIP_DURATION_TEMPORARY = 0; if ( $DIYSHIP_START_TIME != -1 ) @ DIYSHIP_DURATION_TEMPORARY = $DIYSHIP_END_TIME - $DIYSHIP_START_TIME; setenv DIYSHIP_DURATION $DIYSHIP_DURATION_TEMPORARY; set prompt = "`$DIYSHIP_COMMAND_LEFT`"; set DIYSHIP_START_TIME = -1';
set DIYSHIP_POSTCMD = 'set DIYSHIP_START_TIME = `date +%s%N | cut -c '-13'`';

alias precmd "$DIYSHIP_PRECMD;$USER_PRECMD";
alias postcmd "$DIYSHIP_POSTCMD;$USER_POSTCMD";

set DIYSHIP_START_TIME = `date +%s%N | cut -c '-13'`;

# }}}
