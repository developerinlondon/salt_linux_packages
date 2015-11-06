/tmp/tomcat8.tar.gz:
  file.managed:
    - source: http://www.motorlogy.com/apache/tomcat/tomcat-8/v8.0.28/bin/apache-tomcat-8.0.28.tar.gz 
    - template: jinja

/tmp/tomcat8:
 cmd.run:
   - name: tar xf /tmp/tomcat8.tar.gz
   - cwd: /opt
   
