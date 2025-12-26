
## AUTOLOAD FILES
mkdir $nu.user-autoload-dirs.0
starship init nu | save -f ($nu.user-autoload-dirs.0 | path join "21-auto-starship.nu")


mkdir ($nu.user-autoload-dirs.0 | path join "../vendor")
zoxide init nushell | save -f ($nu.user-autoload-dirs.0 | path join "../vendor/auto-zoxide.nu")
