[root@ip-172-31-11-67 /]# history
    1  cd /
    2  cd /
    3  docker ps
    4  docker inspect zen_jackson
    5  curl 172.17.0.2
    6  docker ps
    7  clear
    8  apt
    9  docker pull docker pull ubuntu
   10  docker pull ubuntu
   11  docker images
   12  docker run ubuntu
   13  docker ps
   14  docker ps -a
   15  docker run ubuntu --help
   16  docker run --help
   17  clear
   18  docker run -it ubuntu
   19  docker ps
   20  docker run -it --name gfgos1 amazonlinux
   21  clear
   22  docker ps
   23  netstat -tnlp
   24  docker attach dd2f12c6f684
   25  docker ps
   26  docker start dd2f12c6f684
   27  docker exec -it dd2f12c6f684 bash
   28  docker ps
   29  docker exec gfgos1 date
   30* docker p
   31  docker exec gfgos1 cal
   32  docker exec gfgos1 ls
   33  docker exec -it gfgos1 bash
   34  docker ps
   35  docker rm sharp_roentgen
   36  docker rm -f sharp_roentgen
   37  docker ps
   38  docker ps -a
   39  clear
   40  docker run -it --name os1 -p 80:80 amazonlinux
   41  docker run -it --name os1 -p 90:80 amazonlinux
   42  docker rm os1
   43  docker run -it --name os1 -p 90:80 amazonlinux
   44  docker ps
   45  docker commit --help
   46  docker commit -m httpdserverimage os1 mycustomwebserver:v1
   47  docker images
   48  docker run -it --name gfg2 mycustomwebserver:v1
   49  docker images
   50  docker login
   51  docker tag mycustomwebserver jinny1/gfgdevops24test:v1
   52  docker tag mycustomwebserver:v1 jinny1/gfgdevops24test:v1
   53  docker images
   54  docker push jinny1/gfgdevops24test
   55  docker push jinny1/gfgdevops24test:v1
   56  docker ps
   57  vi sudhanshu.txt
   58  ls
   59  docker cp sudhanshu.txt os1:/
   60  docker exec -it os1 bash
   61  ls
   62  docker cp os1:/a.txt  .
   63  ls
   64  cat a.txt 
   65  docker ps
   66  docker pause os1
   67  docker ps
   68  docker unpause os1
   69  docker ps
   70  ps -aux
   71  docker ps
   72  netstat -tnlp
   73  docker run -it --name gfgos3 --memory 15M  amazonlinux 
   74  docker stats gfgos3
   75  docker ps
   76  docker stats gfgos1
   77  docker run --help
   78  clear
   79  docker ps
   80  docker attach gfgos3
   81  docker ps
   82  docker rm -f gfgos3
   83  clear
   84  mkdir backup
   85  ls
   86  docker run -it --name gfgos6 -p 91:80 -v /backup/:/app amazonlinux
   87  cd backup/
   88  ls
   89  docker rm -f gfgos6
   90  ls
   91  docker run -it --name gfgos7 -p 91:80 -v /backup/:/app amazonlinux
   92  ls
   93  cleat
   94  clear
   95  ls
   96  vi index.html
   97  docker run --name nginxos -p 8080:80 -v /backup/:/usr/share/nginx/html nginx
   98  docker rm -f nginxos
   99  docker run -d --name nginxos -p 8080:80 -v /backup/:/usr/share/nginx/html nginx
  100  docker ps
  101  vi index.html 
  102  docker cp nginxos:/etc/nginx/nginx.conf  .
  103  ls
  104  cat nginx.conf 
  105  cp nginx.conf /
  106  docker run -d --name nginxos2 -p 8081:80 -v /backup/:/usr/share/nginx/html -v /nginx.conf:/etc/nginx/nginx.conf nginx
  107  docker ps
  108  cd /
  109  vi nginx.conf 
  110  docker run -d --name mariogame -p 8083:80 jinny1/mario-game
  111  docker images
  112  history