[root@ip-172-31-41-29 55542]# history
    1  cd /
    2  yum install docker -y
    3  systemctl start docker
    4  curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-latest.x86_64.rpm
    5  sudo rpm -Uvh minikube-latest.x86_64.rpm
    6  minikube start
    7  minikube start --force
    8  docker ps
    9  curl -O https://s3.us-west-2.amazonaws.com/amazon-eks/1.30.2/2024-07-12/bin/linux/amd64/kubectl
   10  ls
   11  chmod +x kubectl 
   12  ls
   13  cp kubectl /usr/bin/
   14  kubectl get pods
   15  kubectl get nodes
   16  kubectl run gfgpod --image=nginx
   17  kubectl get pods
   18  kubectl get pods
   19  kubectl delete pod gfgpod
   20  kubectl get pods
   21  kubectl create --help
   22  clear
   23  kubectl create deployment gfgdep --image=httpd
   24  kubectl get deployment
   25  kubectl get pods
   26  kubectl delete pod gfgdep-75f649545c-bmvbb
   27  kubectl get pods
   28  kubectl describe pod
   29  kubectl get pods
   30  kubectl exec -it gfgdep-75f649545c-pk92v -- /bin/bash
   31  kubectl get pods
   32  kubectl delete pod gfgdep-75f649545c-pk92v
   33  kubectl get pods
   34  kubectl describe pod
   35  curl 10.244.0.6
   36  docker ps
   37  docker exec -it minikube bash
   38  curl 10.244.0.6
   39  kubectl get deployment
   40  kubectl expose deployment gfgdep --port=80 --type=NodePort
   41  kubectl get svc
   42  minikube ip
   43  curl 192.168.49.2:32131
   44  kubectl get deployment
   45  kubectl get pods
   46  kubectl scale deployment gfgdep --replicas=10
   47  kubectl get pods
   48  kubectl get pods
   49  kubectl get pods
   50  kubectl get pods
   51  kubectl get pods
   52  kubectl scale deployment gfgdep --replicas=2
   53  kubectl get pods
   54  kubectl get pods
   55  vi pod.yaml
   56  kubectl apply -f pod.yaml 
   57  kubectl get deployment
   58  kubectl get pod
   59  vi deployment.yaml
   60  kubectl apply -f deployment.yaml 
   61  kubectl get deployment
   62  kubectl get deployment
   63  kubectl get pods
   64  kubectl get replicaset
   65  kubectl delete pod nginx-deployment-77d8468669-z28zr
   66  kubectl get replicaset
   67  kubectl get pods
   68  kubectl describe pod 
   69  kubectl describe pod  nginx-deployment-77d8468669-4zj9d
   70  vi service.yaml
   71  cat deployment.yaml 
   72  vi service.yaml
   73  kubectl apply -f service.yaml 
   74  kubectl get service
   75  minikube ip
   76  curl 192.168.49.2:30338
   77  curl 192.168.49.2:30338
   78  curl 192.168.49.2:30338
   79  curl 192.168.49.2:30338
   80  curl 192.168.49.2:30338
   81  kubectl get pods
   82  minikube ssh
   83  clear
   84  docker run -dit --name webos httpd
   85  docker ps
   86  ps -aux | grep httpd
   87  rpm -q httpd
   88  docker run -dit --name centos centos:7
   89  ps -aux | grep bash
   90  docker run -ditcentos:7
   91  docker run -dit centos:7
   92  ps -aux | grep bash
   93  python3
   94  docker ps
   95  kill -9 55888
   96  ps -aux | grep bash
   97  docker ps
   98  cd /proc
   99  ls
  100  cd 55542
  101  pwd
  102  ls
  103  cd root/
  104  ls
  105  docker exec -it d7 bash
  106  pwd
  107  ls
  108  cd ..
  109  ls
  110  date
  111  nsenter -t 55542 -m  -n -p /bin/bash
  112  docker pull mcr.microsoft.com/mssql/server
  113  docker images
  114  docker run -it --name os11 mcr.microsoft.com/mssql/server
  115  docker ps
  116  docker ps -a
  117  docker run -dit --name os111 mcr.microsoft.com/mssql/server
  118  docker ps
  119  docker exec -it os111 bash
  120  docker logs os111
  121  docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=redhat" -p 1433:1433 -d mcr.microsoft.com/mssql/server:2022-latest
  122  docker ps
  123  docker ps
  124  docker ps -a
  125  docker logs dd16
  126  docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=redhat@324234234234242424" -p 1433:1433 -d mcr.microsoft.com/mssql/server:2022-latest
  127  docker ps -a
  128  docker ps -a
  129  docker ps -a
  130  docker ps -a
  131  docker ps -a
  132  docker ps -a
  133  docker exec -it 37ac9 bash
  134  docker ps
  135  docker history mcr.microsoft.com/mssql/server:2022-latest
  136  history