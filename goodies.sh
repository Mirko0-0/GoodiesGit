#!/bin/bash

#  github setup git 
cd $HOME
read -p "Inserisci il tuo nome utente git: " username
read -p "Inserisci la tua email: " email

if [[ -z "$username" ]]; then
	git config --global user.name "testUsername"
else
	git config --global user.name "$username"
fi
sleep 1
echo "username OK!"

if [ -z "$email" ]; then
	git config --global user.email "sampleEmail@sampleDom.com"
else
	git config --global user.email "$email"
fi
sleep 1
echo "Email OK!"

git config --global core.editor nano
git config --global init.defaultBranch main
git config --global core.autocrlf false

git config --global alias.hist "log --pretty=format:'%C(yellow)[%ad]%C(reset) %C(green)[%h]%C(reset) | %C(red)%s %C(bold red){{%an}}%C(reset) %C(blue)%d%C(reset)' --graph --date=short"

# nano line numbers
pwd

if grep -q "set linenumbers" ~/.nanorc; then
  echo "Line numbers already set up."
else
  echo "set linenumbers" >> ~/.nanorc
  echo "Line numbers setup correctly."
fi

