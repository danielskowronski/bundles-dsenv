#!/bin/bash

tar czf dsenv-common.tgz common/
tar czf dsenv-cli.tgz zsh/
tar czf dsenv-dev.tgz zsh/
tar czf dsenv-mac.tgz zsh/
tar czf dsenv-zsh.tgz zsh/

rm -f ASSETS.md
for asset in *.tgz; do
	checksum=`sha256sum $asset | awk '{print $1}'`
	link="https://github.com/danielskowronski/dsenv/releases/download/${GITHUB_REF_NAME}/${asset}"
	echo "- [${link}](${link}) - \`${checksum}\`" >> ASSETS.md
done
