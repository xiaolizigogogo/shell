#!bin/bash
jdbcurl=$JDBCURL
jdbcname=$JDBCNAME
jdbcusername=$JDBCNAME
jdbcpassword=$JDBCPASSWORD

sed -i "s/jdbc_name/$jdbcname/g" /usr/local/tomcat/conf/server.xml
sed -i "s/jdbc_url/$jdbcurl/g" /usr/local/tomcat/conf/server.xml
sed -i "s/jdbc_username/$jdbcusername/g" /usr/local/tomcat/conf/server.xml
sed -i "s/jdbc_password/$jdbcpassword/g" /usr/local/tomcat/conf/server.xml
sed -i "s/jdbc_name/$jdbcname/g" /usr/local/tomcat/conf/context.xml
catalina.sh start
