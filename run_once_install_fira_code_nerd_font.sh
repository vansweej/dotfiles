#!/usr/bin/env sh
TEMPDIR=$(mktemp --directory --tmpdir 'chezmoi-XXXXXXXXXX-install-fira-code-nerd-font')
curl --location --output $TEMPDIR/firacode.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip
unzip $TEMPDIR/firacode.zip -d $TEMPDIR
mkdir -p ~/.local/share/fonts/firacodenerd
cp "$TEMPDIR"/*.otf ~/.local/share/fonts/firacodenerd
cp "$TEMPDIR"/*.ttf ~/.local/share/fonts/firacodenerd
rm -r $TEMPDIR
fc-cache