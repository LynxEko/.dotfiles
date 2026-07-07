PS1='[\u@\h \W]\$ '

if [ -x "$(command -v starship)" ]; then
    case "$(ps -p $$ -o 'comm=')" in
        *bash*)
            eval "$(starship init bash)"
            ;;
        *zsh*)
            eval "$(starship init zsh)"
            ;;
        *)
            echo "shell not recognized, can't set prompt"
            ;;
    esac
fi
