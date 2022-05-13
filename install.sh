echo    'Initializing...'
touch /tmp/keepalive
echo    'Removing chromium-browser'
sudo apt remove chromium-browser
sudo rm -rf /usr/local/share/chromium
echo    'Install Google_chrome && chrome driver'
sudo apt install ./assets/chrome.deb
echo    'Install Dependiences'
python -m pip install selenium
