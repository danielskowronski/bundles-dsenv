#!/bin/bash

duti -s com.sublimetext.4 public.plain-text all
duti -s com.sublimetext.4 public.unix-executable all
duti -s com.sublimetext.4 public.data all

mkdir -p ~/Library/Application\ Support/Sublime\ Text/Packages/User/

for f in Preferences.sublime-settings Package\ Control.sublime-settings bh_core.sublime-settings; do
	cp "${f}" "${f}.`date +%s`"
	cp "/opt/homebrew/share/dsenv-dev-${f}" ~/Library/Application\ Support/Sublime\ Text/Packages/User/
done
