# Building Docker images. Push to Docker Registry. Pull from Kubernetes


### Build

 - git clone https://github.com/buildmystartupio/basicnodeapp.git
 - cd basicnodeapp
 - cat Dockerfile
 - docker build -t yourdockerrepo/basicnodeapp .
 
### Push
 
 - docker push yourdockerrepo/basicnodeapp

### Run
 
 - kubectl run basicnodeapp --image=yourdockerrepo/basicnodeapp --port=3000
 - kubectl expose deployment basicnodeapp --type=NodePort
 - kubectl get service
