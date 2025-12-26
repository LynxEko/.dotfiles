
$env.config.keybindings ++= [{
    name: tmux-sessionizer
    modifier: control
    keycode: char_f
    mode: emacs
    event: {
        send: executehostcommand,
        value: "tmux-sessionizer"
    }
}]

