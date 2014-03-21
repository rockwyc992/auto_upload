#!/bin/bash

mkdir -p "$HOME"/.au_ce1002/bin/

cp zip.ce1002 "$HOME"/.au_ce1002/bin/
cp vim.ce1002 "$HOME"/.au_ce1002/bin/
cp upload.ce1002 "$HOME"/.au_ce1002/bin/
cp au_ce1002.vim "$HOME"/.vim/plugin/

read -p '請輸入lms帳號：' user
read -p '請輸入lms密碼：' passwd

echo 'user='"$user" > "$HOME/.au_ce1002/config"
echo 'password='"$passwd" >> "$HOME/.au_ce1002/config"


flag=0
while read line
do
    if [[ $line =~ '.au_ce1002' ]] ;then
        flag=1
    fi
done < "$HOME"/.bashrc
if [[ $flag == 0 ]] ;then
    echo '' >> "$HOME"/.bashrc
    echo '[[ $PATH =~ "$HOME/.au_ce1002/bin" ]] || PATH="$PATH":"$HOME"/.au_ce1002/bin' >> "$HOME"/.bashrc
fi

flag=0
while read line
do
    if [[ $line =~ '.au_ce1002' ]] ;then
        flag=1
    fi
done < "$HOME"/.bash_profile
if [[ $flag == 0 ]] ;then
    echo '' >> "$HOME"/.bash_profile
    echo '[[ $PATH =~ "$HOME/.au_ce1002/bin" ]] || PATH="$PATH":"$HOME"/.au_ce1002/bin' >> "$HOME"/.bash_profile
fi

