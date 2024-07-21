[root@ip-172-31-44-111 system]# history
    1  cd /
    2  whoami
    3  groupadd devs
    4  groupadd qa
    5  cat /etc/group
    6  useradd dev1 -G devs
    7  useradd dev2 -G devs
    8  useradd  qa1  -G qa
    9  cat /etc/group
   10  id dev1
   11  cd home/
   12  ls
   13  passwd dev1
   14  passwd qa1
   15  su dev1
   16  su qa1
   17  history
   18  su dev1
   19  clear
   20  cd dev1/
   21  ls
   22  ls -l
   23  ls -l -a
   24  chown --help
   25  clear
   26  ls -l
   27  chown qa1 a.txt
   28  ls -l
   29  chown :devs a.txt 
   30  ls -l
   31  su dev2
   32  su qa1
   33  id qa1
   34  id dev1
   35  useradd dev3
   36  id dev3
   37  usermod --help
   38  usermod -a -G devs dev3
   39  id dev3
   40  yum install httpd -y
   41  systemctl start httpd
   42  cd /etc/httpd/
   43  ls
   44  ls -l
   45  cd conf
   46  ls
   47  ls -l
   48  cd /
   49  cat /etc/passwd
   50  id dev3
   51  userdel --help
   52  man userdel
   53  man usermod
   54  usermod -L dev3
   55  passwd dev3
   56  su dev3
   57  su qa1
   58  usermod --help
   59  usermod -L dev3
   60  su qa1
   61  usermod -U dev3
   62  su qa1
   63  systemctl stop httpd
   64  vi /etc/sudoers
   65  which yum
   66  date
   67  which date
   68  cd /usr/bin
   69  ls
   70  date
   71  /usr/bin/date
   72  /usr/bin/cal
   73  which yum
   74  vi /etc/sudoers
   75  su dev1
   76  vi /etc/sudoers
   77  su dev1
   78  systemctl start httpd
   79  su dev1
   80  vi /etc/sudoers
   81  cat /etc/group
   82  su dev3
   83  yum install nginx
   84  cd /etc/yum.repos.d/
   85  ls
   86  vi amazonlinux.repo 
   87  vi epel.repo
   88  yum repolist
   89  yum list
   90  cd /
   91  cd /etc/systemd/
   92  ls
   93  cd system
   94  ls
   95  mkdir user-1001.slice
   96  cd user-1001.slice/
   97  ls
   98  vi gfg.conf
   99  ls
  100  cd ..
  101  ls
  102  mv user-1001.slice user-1001.slice.d
  103  ls
  104  cd user-1001.slice.d/
  105  systemctl daemon-reload
  106  systemctl restart user-1001.slice
  107  cd ..
  108  cd httpd.service.d/
  109  ls
  110  systemctl status httpd
  111  vi /usr/lib/systemd/system/httpd.service
  112  systemctl start httpd
  113  ps -aux | grep httpd
  114  kill -9 33140
  115  ps -aux | grep httpd
  116  kill -9 33141 33142 33143 33144 
  117  systemctl start httpd
  118  systemctl status httpd
  119  vi httpd.conf
  120  systemctl daemon-reload
  121  systemctl restart httpd
  122  systemctl status httpd
  123  cd /
  124  vi app.py
  125  pip3 install flask
  126  yum install pip3
  127  yum whatprovides pip3
  128  yum install python3-pip
  129  pip3 install flask
  130  python3 app.py
  131  vi app.py 
  132  python3 app.py
  133  cd /etc/systemd/
  134  cd system
  135  vi pythongfgflask.service
  136  systemctl status httpd
  137  vi /usr/lib/systemd/system/httpd.service
  138  vi pythongfgflask.service
  139  systemctl daemon-reload
  140  systemctl start pythongfgflask
  141  systemctl status pythongfgflask
  142  systemctl stop pythongfgflask
  143  systemctl start pythongfgflask
  144  systemctl enable pythongfgflask
  145  systemctl enable httpd
  146  vi stress.service
  147  systemctl daemon-reload 
  148  systemctl start stress.service 
  149  systemctl status stress.service 
  150  vi stress.service
  151  systemctl daemon-reload 
  152  systemctl start stress.service 
  153  systemctl status stress.service 
  154  ls
  155  cp stress.service stress2.service 
  156  systemctl daemon-reload 
  157  systemctl start stress2.service 
  158  vi stress.service 
  159  mv stress2.service stressgfg.service
  160  ls
  161  vi stressgfg.service 
  162  systemctl daemon-reload
  163  systemctl restart stress.service 
  164  systemctl restart stressgfg.service 
  165  systemctl stop stress2
  166  history