cd /
    2  fdisk -l
    3  df -h
    4  ls
    5  fdisk -l
    6  fdisk -l
    7  fdisk /dev/xvdb
    8  fdisk -l
    9  mkfs.ext4 /dev/xvdb1
   10  mkdir gfg
   11  df -h
   12  mount /dev/xvdb1 gfg
   13  df -h
   14  cd gfg/
   15  ls
   16  pwd
   17  touch a.txt
   18  ifconfig
   19  fdisk -l
   20  yum whatprovides lvm
   21  yum install lvm2-2.03.16-1.amzn2023.0.4.x86_64
   22  pvdisplay
   23  fdisk -l
   24  clear
   25  fdisk -l
   26  pvcreate /dev/xvde
   27  pvcreate /dev/xvdg
   28  pvdisplay
   29  vgcreate gfgvg /dev/sde /dev/sdg
   30  vgdisplay
   31  lvcreate --size 3.5G --name gfglv gfgvg
   32  vgdisplay
   33  lvdisplay
   34  mkfs.ext4  /dev/gfgvg/gfglv
   35  mkdir gfgbackup
   36  mount  /dev/gfgvg/gfglv gfgbackup
   37  df -h
   38  cd gfgbackup/
   39  ls
   40  touch a.mp4
   41  lvextend --size+500M   /dev/gfgvg/gfglv
   42  lvextend --size +500M   /dev/gfgvg/gfglv
   43  lvdisplay
   44  df -h
   45  resize2fs  /dev/gfgvg/gfglv
   46  df -h
   47  vgdisplay
   48  history
   49  clear
   50  ls
   51  cd /
   52  df -ht
   53  df -h
   54  umount /gfg
   55  umount gfg
   56  mkdir scripts
   57  umount /gfg/gfgbackup
   58  umount /gfg
   59  df -hT
   60  cd scripts/
   61  ls
   62  clear
   63  vi basics.sh
   64  bash basics.sh 
   65  vi basics.sh 
   66  bash basics.sh 
   67  vi basics.sh 
   68  bash basics.sh 
   69  ls
   70  vi basics.sh 
   71  bash basics.sh 
   72  bash basics.sh sudhanshu
   73  vi basics.sh 
   74  bash basics.sh sudhanshu
   75  h rohan
   76  cd /
   77  cd scripts/
   78  ls
   79  bash basics.sh gfg
   80  bash basics.sh gfg sudhanshu
   81  vi basics.sh 
   82  bash basics.sh sudhanshu
   83  bash basics.sh sudhanshu rohan
   84  bash basics.sh sudhanshu rohan gfg
   85  vi basics.sh 
   86  bash basics.sh 
   87  bash basics.sh sudhanshu rohan gfg
   88  bash basics.sh sudhanshu rohan gfg gfg123
   89  bash basics.sh sudhanshu rohan gfg gfg123 gfg345
   90  vi basics.sh 
   91  bash basics.sh nginx
   92  bash basics.sh httpd
   93  vi user.sh
   94  bash user.sh sudhanshu
   95  id sudhanshu
   96  id rohan
   97  bash user.sh rohan
   98  id rohan
   99  vi user.sh
  100  bash user.sh rohan123
  101  id rohan123
  102  bash user.sh rohan123 sudhanshu123 dev123
  103  vi user.sh
  104  bash user.sh rohan123 sudhanshu123 dev123
  105  vi user.sh
  106  bash user.sh rohan123 sudhanshu123 dev123
  107  bash user.sh rohan32424 sudhanshu12342424 dev12324242444
  108  vi user.sh
  109  bash user.sh rohan32424 sudhanshu12342424 dev12324242444
  110  bash user.sh rohan32424 sudhanshu12342424 dev12324242444 dev34 ops
  111  vi user.sh
  112  bash user.sh rohan32424 sudhanshu12342424 dev12324242444 dev34 ops
  113  id sudhanshu
  114  id sudhanshu > tmp.txt
  115  ls
  116  cat tmp.txt 
  117  yum install nginx
  118  yum install nginx > tmp.txt
  119  cat tmp.txt 
  120  yum install nginx > /dev/null
  121  vi user.sh
  122  bash user.sh rohan32424 sudhanshu12342424 dev12324242444 dev34 ops
  123  test 1==1
  124  test 11>1
  125  date
  126  echo $?
  127  date123
  128  echo $?
  129  test 1==1
  130  echo $?
  131  test 10==1
  132  echo $?
  133  test --help
  134  test 1 -eq 1 
  135  echo $?
  136  test 10 -eq 1 
  137  echo $?
  138  test 10 -gt 1 
  139  echo $?
  140  test 10 -gt 20 
  141  echo $?
  142  test 10 -lt 20 
  143  echo $?
  144  date
  145  date > tmp.txt
  146  cat tmp.txt 
  147  date &> tmp.txt
  148  cat tmp.txt 
  149  date123 > tmp.txt
  150  date123 &> tmp.txt
  151  date &> tmp.txt
  152  date123 &> tmp.txt
  153  date123 &> tmp.txt
  154  cat tmp.txt 
  155  vi user.sh 
  156  bash user.sh sudhanshu
  157  bash user.sh sudhanshu121
  158  bash user.sh sudhanshu121
  159  vi user.sh 
  160  bash user.sh sudhanshu121
  161  vi user.sh 
  162  bash user.sh sudhanshu121
  163  bash user.sh sudhanshu34535353534
  164  bash user.sh sudhanshu34535353534 rohan 
  165  vi db.csv
  166  vi user.sh 
  167  vi user.sh 
  168  bash user.sh 
  169  vi basics.sh 
  170  bash basics.sh 
  171  bash basics.sh httpd
  172  vi basics.sh 
  173  bash basics.sh httpd
  174  which bash
  175  vi basics.sh 
  176  chmod +x basics.sh 
  177  ls
  178  ./basics.sh 
  179  ./basics.sh nginx
  180  ssh root@172.31.13.217
  181  clear
  182  vi /etc/ssh/sshd_config
  183  systemctl restart sshd
  184  passwd root
  185  ssh root@172.31.13.217
  186  ssh-copy-id root@172.31.13.217
  187  clear
  188  cd /
  189  ls
  190  ssh-copy-id root@172.31.13.217
  191  cd .
  192  cd /
  193  clear
  194  ssh-copy-id root@172.31.13.217
  195  cd /root/
  196  ls
  197  cd .ssh/
  198  ls
  199  ssh root@172.31.13.217
  200  ls
  201  ls
  202  ls -l
  203  cat authorized_keys 
  204  ls -l
  205  history