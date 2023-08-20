#!/bin/bash

# our program goal is to install mysql

USERID=$(id -u)

if [$USERID -ne 0]
then
  echo "ERROR : Plz use root user"
else
  echo "INFO : you are root user"
fi

yum install git -y

