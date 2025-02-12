#!/bin/bash

# byobu listの結果を変数に格納
result=$(eval byobu list 2>&1)

# 結果に特定のエラーメッセージが含まれているか確認
if [[ "$result" == *"no server running on /tmp/tmux-1000/default"* ]]; then
  # エラーメッセージが含まれている場合、byobu newを実行
  byobu new
else
  # エラーメッセージが含まれていない場合、byobuを実行
  byobu
fi
