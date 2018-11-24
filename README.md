# docker image build
> docker build --tag app:0.1 .

# docker image push to Oracle Container Image Registry

> docker login phx.ocir.io
    - username : isheejong@gmail.com
    - password : Kubernetes1!
    - auth token : ****************
    - repository : heejong/app

 > docker images
 > docker tag 6a4420b2d5d6 phx.ocir.io/astom2018/heejong/app:0.1
 > docker push phx.ocir.io/astom2018/heejong/app:0.1

# create namespace
> kubectl create webapp-ns.yaml


# setting up the secret information in kubernetes for deploying the docker image for private repository
> kubectl create secret -n demo docker-registry ocirsecret --docker-server=phx.ocir.io --docker-username='astom2018/isheejong@gmail.com' --docker-password='************' --docker-email='isheejong@gmail.com'

# if you want to delete ocirsecret, you do this command "kubectl delete secret ocirsecret" 

 # setting git remote url for pushing a source code to repository
 git remote set-url origin "https://odpkr@github.com/odpkr/cloudnative-demo.git


 # create deployment
> kubectl create -f webapp-dep.yaml

 # create service
> kubectl create -f webapp-svc.yaml 
