#!/usr/bin/env bash

mvn clean package

echo 'Copy files...'

scp -P 8082 -i ~/.ssh/id_rsa \
    target/sweater-1.0-SNAPSHOT.jar \
    alex@cloudrec.ru:/home/alex/

echo 'Restart server...'

ssh -i ~/.ssh/id_rsa alex@cloudrec.ru -p 8082 << EOF

pgrep java | xargs kill -9
nohup java -jar sweater-1.0-SNAPSHOT.jar > log.txt &

EOF

echo 'Bye'