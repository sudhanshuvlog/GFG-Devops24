 502  cd GFG
  503  ls
  504  cd devops24-class
  505  ls
  506  mkdir gitsession2
  507  cd gitsession2/
  508  git init
  509  touch a.txt
  510  git status
  511  git add . ; git commit -m "first by master"
  512  git log
  513  touch b.txt
  514  touch c.txt
  515  ls
  516  git add b.txt
  517  git status
  518  git commig -m "second commit"
  519  git commit -m "second commit"
  520  git log
  521  git status
  522  git reset --soft HEAD~1
  523  git log
  524  ls
  525  git status
  526  git add b.txt c.txt
  527  git commit -m "added both b and c.txt"
  528  git log
  529  git e.txt
  530  touch e.txt
  531  git add ,
  532  git add .
  533  git commit -m "third commit"
  534  touch f.txt
  535  git add .
  536  git commit -m "fourth commit"
  537  git log
  538  git reset --mixed HEAD~2
  539  ls
  540  git log
  541  git status
  542  vi e.txt
  543  git add e.txt
  544  git commit -m "updated e.txt file is going to be commited"
  545  git log
  546  ls
  547  touch l.txt
  548  git add .
  549  git commit -m "disaster commit"
  550  ls
  551  git log
  552  git reset --hard HEAD~1
  553  ls
  554  git log
  555  git status
  556  ls
  557  touch p.txt
  558  git add .
  559  git commit -m "new changes"
  560  git log
  561  ls
  562  git revert HEAD
  563  ls
  564  git status
  565  git log
  566  git branch feature-1
  567  git switch feature-1
  568  touch sudhanshu.txt
  569  git add .
  570  git commit -m "first by feature-1"
  571  touch gfg.txt
  572  git add .
  573  git commit -m "second by feature-1"
  574  git log
  575  git switch master
  576  git log --oneline
  577  git cherry-pick 90afeecdd8d7bef3fbef1e9fc6932a95eef20755
  578  ls
  579  git log --oneline
  580  git remote -v
  581  git config -l
  582  git config user.name Trainersudhanshu
  583  git config user.name
  584  git config user.email sudhanshutest123@gmail.com
  585  git config user.email
  586  git remote add origin git@github.com:Trainersudhanshu/testgfg242.git
  587  git remote -v
  588  git push
  589   git push --set-upstream origin master
  590  git log
  591  cat a.txt
  592  git log
  593  git fetch
  594  git status
  595  git merge
  596  cat a.txt
  597  git log --oneline
  598  git pull
  599  cat b.txt
  600  git log --oneline
  601  git branch
  602  git branch feature-dev
  603  git switch feature-dev
  604  ls
  605  touch m.txt
  606  git add .
  607  git commit -m " first by feature-dev"
  608  ls
  609  vi sudhanshu.txt
  610  git add .
  611  git commit -m " second by feature-dev"
  612  git log --oneline
  613  git push
  614   git push --set-upstream origin feature-dev
  615  cd ..
  616  clear
  617  ls
  618  git clone https://github.com/sudhanshuvlog/GFG-Devops24.git
  619  ls
  620  cd GFG-Devops24/
  621  ls
  622  git log
  623  cd .
  624  cd ..
  625  ls
  626  mkdir rebaseinteractivegfg
  627  cd rebaseinteractivegfg/
  628  git init
  629  touch a.txt
  630  git add . ; git commit -m "first change"
  631  touch b.txt
  632  touch b.txt
  633  git add . ; git commit -m "second change"
  634  touch c.txt
  635  git add . ; git commit -m "third change"
  636  git log
  637  ls
  638  git status
  639  git reflog
  640  git rebase -i HEAD~2
  641  git rebase -i HEAD~2
  642  ls
  643  git status
  644  vi c.txt
  645  git add .
  646  git rebase --continue
  647  git status
  648  git log
  649  git rebase -i HEAD~2
  650  git log
  651  history
