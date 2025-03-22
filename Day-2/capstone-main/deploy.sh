#!/bin/bash
    echo hi123
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u  -p 
    docker tag test ar8888/dev
    docker push ar8888/dev
    docker-compose up -d
    
