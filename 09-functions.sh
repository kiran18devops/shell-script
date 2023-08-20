#!/bin/bash

DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log

VALIDATE(){

  if [$1 -ne 0 ]
  then
    echo "Installation.. FAILURE"
    exit 1
  else
    echo "Installation.. SUCCESS"
  fi
}

yum install mysql -y

VALIDATE $? "Installing MYSQL"

yum install postfix -y

VALIDATE $? "Installing Postfix"
