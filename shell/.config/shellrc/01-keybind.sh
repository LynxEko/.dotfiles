

case "$(ps -p $$ -o 'comm=')" in
    *bash*)
        bind-exec() {
            bind -x "\"$1\":\"$2\""
        }
        ;;
    *zsh*)
        bind-exec() {
            bindkey -s $1 "$2\n"
        }
        ;;
    *)
        echo "shell not recognized, won't be able to set keybinds"
        bind-exec() {
            echo "warning can't set keybind '$1' to run '$2'"
        }
        ;;
esac

bind-exec "^f" "tmux-sessionizer"


