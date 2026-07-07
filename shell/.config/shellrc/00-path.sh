

post_path() {
    if [[ "$PATH" != *"$1"* ]]; then
        export PATH=$PATH:$1
    fi
}
pre_path() {
    if [[ "$PATH" != *"$1"* ]]; then
        export PATH=$1:$PATH
    fi
}

case $(uname -n) in
    archwatermelon)
        pre_path "$HOME/.local/bin"
        pre_path "$HOME/.local/scripts"

        post_path "$HOME/.cargo/bin"
        ;;
    MacBook-Pro-de-Erik.local)
        pre_path "$HOME/.opencode/bin"
        pre_path "$HOME/.local/bin"
        pre_path "$HOME/.local/scripts"

        post_path "/usr/local/bin"
        post_path "/opt/homebrew/bin"
        post_path "/opt/homebrew/opt/awscli@1/bin"
        post_path "/opt/homebrew/share/google-cloud-sdk/bin"
        ;;
    *)
        echo machine not recognized
esac
