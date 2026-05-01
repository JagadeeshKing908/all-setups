yum install java-17-amazon-corretto-devel.x86_64 git docker -y ; systemctl start docker ; systemctl enable docker
cd /opt && \
wget https://dlcdn.apache.org/maven/maven-3/3.9.15/binaries/apache-maven-3.9.15-bin.tar.gz && \
tar -zxvf apache-maven-3.9.15-bin.tar.gz && \
mv apache-maven-3.9.15 maven
echo "export M2_HOME=/opt/maven" | sudo tee /etc/profile.d/maven.sh
echo "export PATH=\$M2_HOME/bin:\$PATH" | sudo tee -a /etc/profile.d/maven.sh
source /etc/profile.d/maven.sh
timeout 5 mvn -version
