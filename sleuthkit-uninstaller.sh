LOCAL_BIN=/usr/local/bin
LOCAL_LIB=/usr/local/lib
LOCAL_INCLUDE=/usr/local/include

echo "[!] Remove sleuthkit-binaries"
sudo rm -f $LOCAL_BIN/{fls,ils,icat,tsk_recover}
echo $LOCAL_BIN/{fls,ils,icat,tsk_recover}


echo "[!] Remove tsk - TheSleuthKit dependencies"
sudo rm -f $LOCAL_LIB/libtsk*
sudo rm -rf $LOCAL_INCLUDE/tsk
