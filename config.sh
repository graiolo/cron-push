chmod +x off-push.sh crono-push.sh

./replace.sh crono-push.sh.desktop
./replace.sh off-push.sh.desktop
./replace.sh crono-push.sh
./replace.sh off-push.sh

if [ ! -d ~/.config ]
	then
		mkdir ~/.config
fi

if [ ! -d ~/.config/autostart ]
	then
		mkdir ~/.config/autostart
fi

rm -f ~/.config/autostart/crono-push.sh.desktop
rm -f ~/.config/autostart/off-push.sh.desktop

mv crono-push.sh.desktop ~/.config/autostart/
mv off-push.sh.desktop ~/.config/autostart/

rm -rf .git
rm -f README.md
rm -f replace.sh
rm -f config.sh
