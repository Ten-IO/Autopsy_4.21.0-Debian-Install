DOWNLOAD_DIR=$HOME/Desktop

echo "[+] Working at $DOWNLOAD_DIR"
cd $DOWNLOAD_DIR

wget -P "$DOWNLOAD_DIR" https://github.com/sleuthkit/sleuthkit/releases/download/sleuthkit-4.12.1/sleuthkit-java_4.12.1-1_amd64.deb
sudo apt install $DOWNLOAD_DIR/sleuthkit-java_4.12.1-1_amd64.deb
