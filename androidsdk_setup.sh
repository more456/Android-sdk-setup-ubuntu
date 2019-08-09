apt-get remove default-jdk
apt-get remove openjdk-*-jdk 
sudo apt install openjdk-8-jdk
java -version

sudo update-alternatives --config java
#There are 2 choices for the alternative java (providing /usr/bin/java).

#  Selection    Path                                            Priority   Status
#------------------------------------------------------------
#* 0            /usr/lib/jvm/java-11-openjdk-amd64/bin/java      1111      auto mode
#  1            /usr/lib/jvm/java-11-openjdk-amd64/bin/java      1111      manual mode
#  2            /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java   1081      manual mode

# Press <enter> to keep the current choice[*], or type selection number: 2
#update-alternatives: using /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java to provide /usr/bin/java (java) in manual mode

java -version
#openjdk version "1.8.0_222"


sudo apt update && sudo apt install android-sdk
https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip
unzip sdk-tools-*.zip
mkdir /opt/android-sdk-linux
mv tools /opt/android-sdk-linux
cd /opt/android-sdk-linux/tools/bin
./sdkmanager --list
./sdkmanager "platforms;android-26" "build-tools;26.0.3"
# set path
echo 'export PATH=$PATH:/opt/android-sdk-linux/tools/bin' >> /etc/profile.d/android.sh
echo 'export ANDROID_TOOLS=/opt/android-sdk-linux' >> /etc/profile.d/android.sh
source /etc/profile.d/android.sh
