chmod 777 *

./replace.sh crono-push.sh.desktop
./replace.sh off-push.sh.desktop
./replace.sh crono-push.sh
./replace.sh off-push.sh

mv crono-push.sh.desktop ~/.config/autostart/
mv off-push.sh.desktop ~/.config/autostart/

rm -rf .git
rm -f README.md
rm -f replace.sh
rm -f config.sh
