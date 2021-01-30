# auto install and configure jdk
cd ~ && mkdir .auto_jdk
wget https://github.com/minicloudsky/auto-install-jdk-8u-261-linux-x64/releases/download/1.0/jdk-8u261-linux-x64.tar.gz
tar -zxvf jdk-8u261-linux-x64.tar.gz
mkdir /usr/java
mv  jdk1.8.0_261/ /usr/java/
echo "export JAVA_HOME=/usr/java/jdk1.8.0_261" >> ~/.bashrc
echo "export JRE_HOME=${JAVA_HOME}/jre" >> ~/.bashrc
echo "export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib" >> ~/.bashrc
echo "export PATH=${JAVA_HOME}/bin:$PATH" >> ~/.bashrc
source ~/.bashrc
java -version
javac
java
echo "jdk install finished ."

