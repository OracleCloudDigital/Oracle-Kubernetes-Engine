본 튜토리얼은 Oracle Container Engine, Oracle Container Image Registry, Oracle Container Pipeline 을 이해하기 위한 기본 튜토리얼 입니다.


1. Container Image Build
    <pre><code> > docker build --tag app:0.1 .</code></pre>

2. docker image push to Oracle Container Image Registry
    <pre><code> > docker login phx.ocir.io
    - username : isheejong@gmail.com
    - password : ********
    - auth token : ************
    - repository : heejong/app</code></pre>

3. docker image 확인 및 Push
    <pre><code> > docker images
    > docker tag 6a4420b2d5d6 phx.ocir.io/astom2018/heejong/app:0.1
    > docker push phx.ocir.io/astom2018/heejong/app:0.1 </code></pre>

4. Kubernetes Namespace 생성
    <pre><code> > kubectl create webapp-ns.yaml</code></pre>


# setting up the secret information in kubernetes for deploying the docker image for private repository
> kubectl create secret -n demo docker-registry ocirsecret --docker-server=phx.ocir.io --docker-username='astom2018/isheejong@gmail.com' --docker-password=****************' 
--docker-email='isheejong@gmail.com'

# if you want to delete ocirsecret, you do this command "kubectl delete secret ocirsecret" 

 # setting git remote url for pushing a source code to repository
 git remote set-url origin "https://odpkr@github.com/odpkr/cloudnative-demo.git


 # create deployment
> kubectl create -f webapp-dep.yaml

 # create service
> kubectl create -f webapp-svc.yaml 








# wercker
  - DOCKER_USERNAME   astom2018/isheejong@gmail.com (e.g. gse00011111/isheejong@gmail.com)
  - DOCKER_PASSWORD   UDlw<nrrqws9><70TRtU 
  - DOCKER_REGISTRY   phx.ocir.io
  - DOCKER_REPO       phx.ocir.io/astom2018/heejong/app
  - PORT              3000

