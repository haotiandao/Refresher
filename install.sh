echo    'Initializing...'
touch /tmp/keepalive
echo    'Removing chromium-browser'
sudo apt remove chromium-browser
sudo rm -rf /usr/local/share/chromium
echo    'Install Google_chrome && chrome driver'
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install google-chrome-stable_current_amd64.deb
wget https://registry.npmmirror.com/-/binary/chromedriver/101.0.4951.41/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
sudo mv -f chromedriver /usr/local/share/chromedriver
sudo ln -s /usr/local/share/chromedriver /usr/local/bin/chromedriver
sudo ln -s /usr/local/share/chromedriver /usr/bin/chromedriver
echo    'Install Dependiences'
python -m pip install selenium
