fzf-rename-file() {
  local old dir base new newpath confirm

  old="$(
    fd --hidden --exclude .git . 2>/dev/null |
    fzf --prompt="Rename file: "
  )"

  [[ -z "$old" ]] && {
    zle -M "Rename cancelled"
    return
  }

  [[ ! -e "$old" ]] && {
    zle -M "Not found: $old"
    return
  }

  dir="${old:h}"
  base="${old:t}"
  new="$base"

  vared -p "New name: " -c new

  [[ -z "$new" ]] && {
    zle -M "Rename cancelled"
    return
  }

  newpath="$dir/$new"

  [[ "$newpath" == "$old" ]] && {
    zle -M "Unchanged"
    return
  }

  [[ -e "$newpath" ]] && {
    zle -M "Target exists: $newpath"
    return
  }

  print
  print "Rename:"
  print "  $old"
  print "→ $newpath"
  print

  read "confirm?Apply rename? [y/N] "

  case "$confirm" in
    y|Y|yes|YES)
      mv -- "$old" "$newpath"
      zle -M "Renamed: $base → $new"
      ;;
    *)
      zle -M "Rename cancelled"
      ;;
  esac

  zle reset-prompt
}

zle -N fzf-rename-file
bindkey '^Xr' fzf-rename-file
