#! /usr/bin/bash

if [ "$(fcitx5-remote)" = "2" ]; then
	echo 注音
else
	echo en
fi
