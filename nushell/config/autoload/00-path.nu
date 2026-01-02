
if (hostname) == "archwatermelon" {
    $env.PATH = ($env.PATH | split row (char esep) | prepend '/home/lynxeko/.cargo/bin')
    $env.PATH = ($env.PATH | split row (char esep) | prepend '/home/lynxeko/go/bin')
    $env.PATH = ($env.PATH | split row (char esep) | prepend '/home/lynxeko/.dotnet/tools')
    $env.PATH = ($env.PATH | split row (char esep) | prepend '/home/lynxeko/.local/bin')
    $env.PATH = ($env.PATH | split row (char esep) | prepend '/home/lynxeko/.local/scripts')
} else if (hostname) == "MacBook-Pro-de-Erik.local" {
    # TODO : fill 
}

