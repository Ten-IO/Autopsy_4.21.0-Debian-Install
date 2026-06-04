DOWNLOAD_DIR=$HOME/Desktop

cd "$DOWNLOAD_DIR" || exit

FILE="autopsy-4.21.0.zip"
URL="https://github.com/sleuthkit/autopsy/releases/download/autopsy-4.21.0/autopsy-4.21.0.zip"

echo "Download autopsy to $DOWNLOAD_DIR"

if [ ! -f "$FILE" ]; then
    wget -O "$FILE" "$URL"
else
    echo "File already exists, skipping download."
fi

unzip autopsy-4.21.0.zip
sudo chmod +x autopsy-4.21.0/linux_macos_install_scripts/install_application.sh

sudo $DOWNLOAD_DIR/autopsy-4.21.0/linux_macos_install_scripts/install_application.sh -z autopsy-4.21.0.zip -j $JAVA_HOME -i /opt/autopsy 

sudo ln -sf /opt/autopsy/autopsy-4.21.0/bin/autopsy /usr/local/bin/autopsy
