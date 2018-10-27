#!/bin/bash

             git clone https://github.com/buildmystartupio/basicnodeapp.git
             cd basicnodeapp
             docker build -t yourdockerrepo/basicnodeapp .
             docker push yourdockerrepo/basicnodeapp
             kubectl run basicnodeapp --image=yourdockerrepo/basicnodeapp --port=3000
             kubectl expose deployment basicnodeapp --type=NodePort
             kubectl get service
