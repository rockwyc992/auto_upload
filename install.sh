#!/bin/bash

sudo cp zip.ce1002 /usr/bin/
sudo cp vim.ce1002 /usr/bin/
sudo cp upload.ce1002 /usr/bin/
cp auto_upload.ce1002.vim "$HOME"/.vim/plugin/

read -p '請輸入lms帳號：' user
read -p '請輸入lms密碼：' passwd

echo 'user='"$user" > "$HOME/.config/auto_upload.ce1002"
echo 'password='"$passwd" >> "$HOME/.config/auto_upload.ce1002"

