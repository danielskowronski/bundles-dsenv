#!/bin/bash

tar czf dsenv-common.tgz common/
tar czf dsenv-cli.tgz cli/
tar czf dsenv-dev.tgz dev/
tar czf dsenv-mac.tgz mac/
tar czf dsenv-zsh.tgz zsh/

rm -f ASSETS.md ASSETS.csv
for asset in *.tgz; do
	checksum=`sha256sum $asset | awk '{print $1}'`
	link="https://github.com/danielskowronski/bundles-dsenv/releases/download/${GITHUB_REF_NAME}/${asset}"
	echo "- [${link}](${link}) - \`${checksum}\`" >> ASSETS.md
	echo "${asset},${link},${checksum}" >> assets.csv
done
