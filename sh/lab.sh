#!/usr/bin/env bash
# author    :   owen-carter
# usage     :   update my lab


workDirectory=~/workspace/
projectList=(
    "bonfire"
    "chopper"
    "husky"
    "ng-zorro-admin"
    "patent"
    "pics"
)
logFile=./update.log
exec 2>${logFile} >${logFile}


function updateMyProject(){
    printf "start update my project"
    for project in ${projectList[@]};
    do
        printf "[project] : ${project}"
        cd ${workDirectory}${project}
        git pull origin master
    done
    printf "end"
}



while true
do
    printf "start to update all my project"
    updateMyProject
    sleep 60
done