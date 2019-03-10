#!/bin/bash

echo Enter commit message:
read commmitMessage
if [ "$commmitMessage" = "" ]
then
    commmitMessage='...'
fi
echo commit message is "\ $commmitMessage"\
exit
git add *
git commit --message=$commmitMessage
git push
