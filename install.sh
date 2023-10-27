#!/usr/bin/env bash
set -euo pipefail

# Recreate Default Behavior
DOTFILES=~/dotfiles
find $DOTFILES -type f -path "$DOTFILES/.*" -and -not -path '*/.git/*' |
        while read df; do
                link=${df/$DOTFILES/$HOME}
                mkdir -p "$(dirname "$link")"
                ln -sf "$df" "$link"
        done

# Unify pass gpg with forwarded agent
rm -rf ~/.config/password-store/gpg
ln -s ~/.gnupg  ~/.config/password-store/gpg
