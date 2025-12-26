# Nushell Config File

## BASIC CONFIG
$env.config.buffer_editor = "nvim"
$env.config.show_banner = false

## ALIASES
alias cat = bat
alias emacs = emacs
alias vim = nvim
alias vi = nvim
alias cd = z

## AUTOLOAD FILES
mkdir $nu.user-autoload-dirs.0
zoxide init nushell | save -f ($nu.user-autoload-dirs.0 | path join "auto-zoxide.nu")
starship init nu | save -f ($nu.user-autoload-dirs.0 | path join "auto-starship.nu")

