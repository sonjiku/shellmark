_shellmark_bash_completion()
{
    local cur=${COMP_WORDS[COMP_CWORD]}
    local prev=${COMP_WORDS[COMP_CWORD-1]}
    local next=""

    local all_options="-d --delete -g --go -p --print -s --set -h --help -l --list -L --listdir -r --replace"
    local all_marks="$(shellmark -l|xargs)"

    if [[ "$cur" =~ ^--? ]];then
      next="$all_options"
    else
       case $prev in
         -d|--delete|-g|--go|-p|--print|-s|--set|-l|--list|-L|--listdir|-r|--replace)
            next="$all_marks"
         ;;
         --help|-h)
            next=""
         ;;
         *)
            if [ "$COMP_CWORD" == "1" ];then
               next="$all_marks"
            else
               next="$(compgen -o dirnames -G "$(shellmark -p $prev)/*" --)"
            fi
         ;;
       esac
    fi
    # Sort the options
    COMPREPLY=( $(compgen -W "$next" -- "$cur") )
}


cdm(){
   if ( [ "$1" = "-g" ] || [ "$1" = "--go" ] ) && [ -n "$2" ];then
      cd "$(shellmark -p $2)"
   elif ( [ -n "$1" ] && ! [[ $1 == -* ]] );then
      if [ -n "$2" ];then
         cd "$2"
      else
         cd "$(shellmark -p $1)"
      fi
   else
      shellmark $@
   fi
}

if [ $BASH_VERSION ]; then
   complete -F _shellmark_bash_completion cdm
elif [ $ZSH_VERSION ]; then
   autoload -U +X bashcompinit && bashcompinit
   complete -F _shellmark_bash_completion cdm
fi
