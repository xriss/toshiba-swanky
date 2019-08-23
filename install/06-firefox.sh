function getmozpath {(
cd ~/.mozilla/firefox/
if [[ $(grep '\[Profile[^0]\]' profiles.ini) ]]
then PROFPATH=~/.mozilla/firefox/$(grep -E '^\[Profile|^Path|^Default' profiles.ini | grep -1 '^Default=1' | grep '^Path' | cut -c6-)
else PROFPATH=~/.mozilla/firefox/$(grep 'Path=' profiles.ini | sed 's/^Path=//')
fi
echo $PROFPATH
)}
mozpath=$(getmozpath)


# tell firefox to stop asking for and saving passwords
# set the homepage

cat <<EOT >>$mozpath/prefs.js

user_pref("signon.autofillForms", false);
user_pref("signon.rememberSignons", false);

user_pref("startup.homepage_override_url", "https://github.com/xriss/toshiba-swanky");
user_pref("browser.startup.page", 1);
user_pref("browser.startup.homepage", "https://github.com/xriss/toshiba-swanky");

EOT

