 1  yum install docker -y
    2  systemctl start docker
    3  cd /
    4  curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-latest.x86_64.rpm
    5  rpm -Uvh minikube-latest.x86_64.rpm
    6  minikube start --force
    7  curl -O https://s3.us-west-2.amazonaws.com/amazon-eks/1.28.3/2023-11-14/bin/linux/amd64/kubectl
    8  chmod +x ./kubectl
    9  cp ./kubectl /usr/bin/
   10  kubectl get pods
   11  wget https://get.helm.sh/helm-v3.7.1-linux-amd64.tar.gz
   12  ls
   13  tar -xvzf helm-v3.7.1-linux-amd64.tar.gz 
   14  ls
   15  helm
   16  cp linux-amd64/helm /usr/bin/
   17  helm --version
   18  helm -v
   19  helm --help
   20  helm version
   21   helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
   22  helm repo update
   23  helm install prometheus prometheus-community/prometheus
   24  kubectl get pods
   25  kubectl expose service prometheus-server --type=NodePort --target-port=9090 --name=prometheus-server-ext --port=9090
   26  helm repo add grafana https://grafana.github.io/helm-charts
   27  helm install grafana grafana/grafana
   28  kubectl get pods
   29  kubectl get svc
   30  kubectl expose service grafana --type=NodePort --target-port=3000 --name=grafana-ext --port=9090
   31  yum install socat -y
   32  socat TCP4-LISTEN:9090,fork,su=nobody TCP4:192.168.49.2:30125
   33  socat TCP4-LISTEN:9090,fork,su=nobody TCP4:192.168.49.2:30125 &
   34  kubectl get svc
   35  socat TCP4-LISTEN:3000,fork,su=nobody TCP4:192.168.49.2:31817 &
   36  kubectl get secret grafana
   37  kubectl get secret grafana -o json
   38  cd /gfg/workspace/pipeline/deploy/terraformscripts/
   39  ls
   40  terraform destroy --auto-approve
   41  minikube ip
   42  docker ps
   43  history