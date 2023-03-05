
# I do not think this works at all, fire fox goes out of the way to break it
#exit


# fire fox must run, it must, it must, it must...
firefox -headless &
sleep 5
killall firefox
sleep 5
# otherwise we can not tweak settings

function getmozpath {(
PROFPATH=~/snap/firefox/common/.mozilla/firefox/$(grep 'Path='  ~/snap/firefox/common/.mozilla/firefox/profiles.ini | head -1 | sed 's/^Path=//')
echo $PROFPATH
)}
mozpath=$(getmozpath)

echo "Using firefox at ${mozpath}"

# tell firefox to stop asking for and saving passwords
# set the homepage

cat <<EOT >>$mozpath/prefs.js

user_pref("signon.autofillForms", false);
user_pref("signon.rememberSignons", false);

user_pref("startup.homepage_override_url", "https://github.com/xriss/toshiba-swanky");
user_pref("browser.startup.page", 1);
user_pref("browser.startup.homepage", "https://github.com/xriss/toshiba-swanky");

EOT

