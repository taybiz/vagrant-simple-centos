#!/bin/bash

#echo "export MW_HOME=/app/oracle/MW_11.1.1.7.0" >> /home/oracle/.bashrc
#echo "export WLS_HOME=$MW_HOME/wlserver_10.3" >> /home/oracle/.bashrc
#echo "export JAVA_HOME=/usr/java/jdk1.7.0_79" >> /home/oracle/.bashrc
#echo "export PATH=$JAVA_HOME/bin:$PATH" >> /home/oracle/.bashrc

echo "Silently installing WLS 10.3... look for it in /app/oracle/MW_11.1.1.7.0"
java -Xmx1024m -jar /vagrant_data/wls1036_generic.jar -mode=silent -silent_xml=/vagrant_data/silent/weblogic-silent.xml -log=weblogic-silent.log

unzip /vagrant_data/ofm_soa_generic_11.1.1.7.0_disk1_1of2.zip
unzip /vagrant_data/ofm_soa_generic_11.1.1.7.0_disk1_2of2.zip

#./runInstaller -silent -response /vagrant_data/silent/soa-silent.xml -invPtrLoc $ORACLE_HOME/oraInst.loc -jreLoc $JAVA_HOME -waitforcompletion
