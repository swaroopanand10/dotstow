#!/usr/bin/env bash

profile=$(find "$HOME"/.mozilla/firefox -name "*.default-release")
# profile=$(find "$HOME"/.mozilla/firefox -name "*.dev-edition-default") # for dev edition

# copying the css stuff
mkdir -p "$profile"/chrome
rsync -a -v --delete "$HOME"/dotstow/common/.config/browser/firefox/chrome/ "$profile"/chrome

#copying the user.js
cp "$HOME"/dotstow/common/.config/browser/firefox/userjs/user.js "$profile"/user.js
