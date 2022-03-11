#! /usr/bin/bash
print()
{
	if [ "$1" != "1" ]; then
		echo 注音
	else
		echo en
	fi
}

save="$(fcitx5-remote)"
print $save
while true; do
	cur="$(fcitx5-remote)"
	if [ "$save" != "$cur" ]; then
		save="$cur"
		print $save
	fi
done
