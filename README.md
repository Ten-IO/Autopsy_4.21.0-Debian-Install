# Autopsy_4.21.0-Debian-Install
This is a set of simple script to help install the stable Autopsy. Intended for people with familiar knowledge with environment variable.

# Inspiration
I was just challenge trying to install autopsy GUI for Linux.
- Version tested: 4.23.1 stuck at loading disk image
- Version tested: 4.23.0 stuck at loading disk image

> Some Modern autopsy relies on sleuthkit 4.14+ which if you compile from source does contain compile problem of missing files.

> Version 4.21.0 work well and relies on sleuthkit 4.12.1. Just sharing ..


# Pre-requisite
You must have common knowledge with some debug and know what you are doing.
```
sudo apt update
sudo apt install -y \
    build-essential autoconf libtool automake git zip wget ant \
    libde265-dev libheif-dev libpq-dev \
    testdisk libafflib-dev libewf-dev libvhdi-dev libvmdk-dev libvslvm-dev \
    libgstreamer1.0-0 gstreamer1.0-plugins-base gstreamer1.0-plugins-good \
    gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav \
    gstreamer1.0-tools gstreamer1.0-x gstreamer1.0-alsa gstreamer1.0-gl \
    gstreamer1.0-gtk3 gstreamer1.0-qt5 gstreamer1.0-pulseaudio
```

Somehow, the compilation kept asking for Java-17 - try download yourself.
```
# Download JDK 17 from Oracle (or use OpenJDK)
wget https://download.oracle.com/java/17/latest/jdk-17_linux-x64_bin.deb
sudo apt install ./jdk-17_linux-x64_bin.deb

# Set JAVA_HOME environment variable
export JAVA_HOME=/usr/lib/jvm/jdk-17
echo 'export JAVA_HOME=/usr/lib/jvm/jdk-17' >> ~/.bashrc
```

# Script Run order
Clone this repo or download one by one:
```
git clone https://github.com/Ten-IO/Autopsy_4.21.0-Debian-Install.git
cd Autopsy_4.21.0-Debian-Install
```

## 1. Sleuthkit
I suggest compile sleuthkit first.
```
chmod +x sleuthkit-4.12.1-installer.sh
./sleuthkit-4.12.1-installer.sh
```
## 2. Autopsy
```
chmod +x autopsy-4.21.0.installer.sh
./autopsy-4.21.0.installer.sh
```

## 3. Verify
```
# Check Autopsy
autopsy --version

# Check SleuthKit tools
fls -v
ils -v
```

## Uninstall script
I'm not well informed on how much can it remove - but it put away some libraries and binaries.

# Files Purpose
`sleuthkit-4.12.1-installer.sh` - Installs SleuthKit : backend

`autopsy-4.21.0.installer.sh` - Downloads and installs GUI

`sleuthkit-uninstaller.sh` - Manual Removes SleuthKit binaries and libraries
