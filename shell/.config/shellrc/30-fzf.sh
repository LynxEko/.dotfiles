
if [ -x "$(command -v fzf)" ]; then
    case "$(ps -p $$ -o 'comm=')" in
        *bash*)
            eval "$(fzf --bash)"
            ;;
        *zsh*)
            eval "$(fzf --zsh)"
            ;;
        *)
            echo "shell not recognized, can't set fzf"
            ;;
    esac
fi

