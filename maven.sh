yum install java-17-amazon-correto-devel -y
cd /opt  && wget https://dlcdn.apache.org/maven/maven-3/3.9.15/binaries/apache-maven-3.9.15-bin.tar.gz && tar -zxvf apache-maven-3.9.15-bin.tar.gz && mv apache-maven-3.9.15 maven
echo "M2_HOME=/opt/maven" | tee -a /etc/profile.d/maven.sh
echo "export PATH=$M2_HOME/bin:$PATH" | tee -a /etc/profile.d/maven.sh
source /etc/profile.d/maven.sh
timeout 5 mvn -version
