use std/util "path add"

if (hostname) == "archwatermelon" {
    path add ~/.cargo/bin
    path add ~/go/bin
    path add ~/.dotnet/bin
    path add ~/.local/bin
    path add ~/.local/scripts
} else if (hostname) == "MacBook-Pro-de-Erik.local" {
    path add /opt/homebrew/bin
    path add /opt/homebrew/opt/awscli@1/bin
    path add ~/.local/scripts
    path add ~/.opencode/bin
}

