
alias lazygit-sys = lazygit


def lazygit [] {
    with-env {SHELL: /bin/bash} {
        lazygit-sys
    }
}
alias lg = lazygit
