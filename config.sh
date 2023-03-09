chmod +x off-push.sh crono-push.sh

./replace.sh crono-push.sh.desktop off-push.sh.desktop
./replace.sh crono-push.sh off-push.sh

if [ ! -d ~/.config ]
	then
		mkdir ~/.config
fi

if [ ! -d ~/.config/autostart ]
	then
		mkdir ~/.config/autostart
fi

rm -f ~/.config/autostart/crono-push.sh.desktop off-push.sh.desktop

mv crono-push.sh.desktop off-push.sh.desktop ~/.config/autostart/

rm -rf .git README.md replace.sh config.sh
