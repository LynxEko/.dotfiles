module path_functions {
    export def add_to_path [p: path] {
        $env.PATH = ($env.PATH | split row (char esep) | prepend $p)
    }
}

overlay use path_functions

if (hostname) == "archwatermelon" {
    add_to_path /home/lynxeko/.cargo/bin
    add_to_path /home/lynxeko/go/bin
    add_to_path /home/lynxeko/.dotnet/tools
    add_to_path /home/lynxeko/.local/bin
    add_to_path /home/lynxeko/.local/scripts
} else if (hostname) == "MacBook-Pro-de-Erik.local" {
    # TODO : fill 
    add_to_path /opt/homebrew/bin
    add_to_path /opt/homebrew/opt/awscli@1/bin
    add_to_path ($env.HOME | path join .local/scripts)
}

overlay hide path_functions
