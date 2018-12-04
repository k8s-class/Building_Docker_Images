# Building Docker images. 


### Build Image One

 - git clone https://github.com/buildmystartupio/basicnodeapp.git
 - cd basicnodeapp
 - cat Dockerfile
 - docker build -t yourdockerrepo/basicnodeapp .
 
 
### Build Image Two

 - git clone https://github.com/buildmystartupio/basicwebapp.git
 - cd basicwebapp
 - cat Dockerfile
 - docker build -t yourdockerrepo/basicwebapp .
 
 
### Push
 - docker login
 - docker push yourdockerrepo/basicnodeapp
 - docker push yourdockerrepo/basicwebapp

### Run
 
 - kubectl run basicnodeapp --image=yourdockerrepo/basicnodeapp --port=3000
 - kubectl expose deployment basicnodeapp --type=NodePort
 - kubectl get service
