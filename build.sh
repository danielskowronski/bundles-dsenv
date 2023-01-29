#!/bin/bash

tar czf dsenv-zsh.tgz zsh/

GITHUB_REF_NAME=v0.0.4

rm -f ASSETS.md
for asset in *.tgz; do
	checksum=`sha256sum $asset | awk '{print $1}'`
	link="https://github.com/danielskowronski/dsenv/releases/download/${GITHUB_REF_NAME}/${asset}"
	echo "- [${link}](${link}) - \`${checksum}\`" >> ASSETS.md
done
