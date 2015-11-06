/tmp/dynamodb_local_latest.tar.gz:
   file.managed:
    -  source: http://dynamodb-local.s3-website-us-west-2.amazonaws.com/dynamodb_local_latest.tar.gz
    - template: jinja

/tmp/dynamodb_local_latest:
  cmd.run:
     - name: tar xf /tmp/dynamodb_local_latest.tar.gz
     - cwd: /opt

dynamo.sh:
 cmd.run:
    - name: $USER -u  java -Djava.library.path=./DynamoDBLocal_lib  -jar /opt/DynamoDBLocal.jar -sharedDb   2>> /dev/null >> /dev/null &

