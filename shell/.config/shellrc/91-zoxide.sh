
if [ -x "$(command -v zoxide)" ]; then

    case "$(ps -p $$ -o 'comm=')" in
        *bash*)
            eval "$(zoxide init bash)"
            alias cd=z
            ;;
        *zsh*)
            eval "$(zoxide init zsh)"
            alias cd=z
            ;;
        *)
            echo "shell not recognized, can't setup zoxide"
            ;;
    esac
    export _ZO_DOCTOR=0
fi

