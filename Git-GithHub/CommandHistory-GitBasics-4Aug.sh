  486  mkdir devops24-class
  487  cd devops24-cl
  488  cd devops24-class/
  489  ls
  490  clear
  491  ls
  492  mkdit gitbasics
  493  mkdir gitbasics
  494  cd gitbasics/
  495  pwd
  496  ls
  497  touch a.txt
  498  ls
  499  git init
  500  ls -a
  501  cd ../..
  502  cd GFG
  503  ls
  504  cd devops24-class/
  505  ls
  506  clear
  507  cd gitbasics/
  508  pwd
  509  ls
  510  ls -l
  511  ls -a
  512  ls
  513  git status
  514  git add a.txt
  515  git status
  516  git commit -m "created a new file names a.txt with algo" .
  517  git status
  518  git log
  519  ls
  520  git status
  521  git add a.txt
  522  git status
  523  git log
  524  git commit -m "added second line of code" .
  525  git log
  526  ls
  527  git status
  528  git add .
  529  git status
  530  git add a.py
  531  git status
  532  git commit -m "added file a.py modified a.txt as well" .
  533  git status
  534  git log
  535  git reset ef765d9 a.txt
  536  git log
  537  cat a.txt
  538  git status
  539  git checkout a.txt
  540  ls
  541  cat a.
  542  cat a.txt
  543  ls
  544  git branch
  545  git status
  546  git add .
  547  git commit -m "v1 code in a.txt file"
  548  git status
  549  ls
  550  cat a.txt
  551  git branch
  552  git branch feature-reel
  553  git branch bug-1234
  554  git branch
  555  cat a.txt
  556  ls
  557  git switch feature-reel
  558  ls
  559  touch reel.txt
  560  git add .
  561  git commit -m "reel first algo"
  562  git log
  563  git branch
  564  git switch master
  565  ls
  566  git log
  567  git log
  568  git switch bug-1234
  569  git log
  570  ls
  571  cat a.txt
  572  git switch master
  573  cat a.txt
  574  git merge bug-1234
  575  cat a.txt
  576  git log
  577  git checkout reel
  578  git branches
  579  git branch
  580  git checkout feature-reel
  581  ls
  582  git switch master
  583  ls
  584  vi a.txt
  585  git add .
  586  git commit -m "new commit" .
  587  git log
  588  git switch feature-reel
  589  git log
  590  git switch master
  591  git merge feature-reel
  592  git log
  593  ls
  594  git merge -h
  595  git bracnh dev1
  596  git branch dev1
  597  git switch dev1
  598  ls
  599  touch b.txt
  600  git add .
  601  git commit -m "first commit by dev1"
  602  git switch master
  603  touch c.txt
  604  git add .
  605  git commit -m "new commit by master"
  606  git merge -s recursive dev1
  607  git branch dev2
  608  git branch dev3
  609  git switch dev2
  610  touch d.txt
  611  git add .
  612  git commit -m "first commit by dev2" .
  613  git log
  614  git log --oneline
  615  git switch dev3
  616  touch f.txt
  617  git add .
  618  git commit -m "new commit by dev3" .
  619  git log --oneline
  620  git switch master
  621  git log --oneline
  622  ls
  623  git merge -s octopus dev2 dev3
  624  ls
  625  git log --oneline
  626  git switch dev3
  627  ls
  628  touch g.txt
  629  git add . ; git commit -m "second by dev3" .
  630  touch h.txt
  631  git add . ; git commit -m "third by dev3" .
  632  touch l.txt
  633  git add . ; git commit -m "fourth by dev3" .
  634  touch n.txt
  635  git add . ; git commit -m "fifth by dev3" .
  636  git log --oneline
  637  ls
  638  git switch master
  639  git merge --squash dev3
  640  ls
  641  git log --oneline
  642  git status
  643  git commit -m "squashed the commit of dev3" /
  644  git commit -m "squashed the commit of dev3" .
  645  git log --oneline
  646  ls
  647  ls
  648  cd ..
  649  ls
  650  mkdir gitadvance
  651  cd gitadvance/
  652  git init
  653  vi a.txt
  654  git add .
  655  git commit -m "first commit by master"
  656  git log
  657  git branch dev1
  658  git switch dev1
  659  ls
  660  vi a.txt
  661  git add .
  662  git commit -m "first commit by dev1"
  663  git log
  664  git switch master
  665  git log
  666  cat a.txt
  667  vi a.txt
  668  git add .
  669  git commit -m "second by master"
  670  git merge dev1
  671  git mergetool
  672  cat a.txt
  673  git status
  674  git commit -m "fixed the conflict"
  675  cat a.txt
  676  git log
  677  ls
  678  cat a.txt.orig
  679  git branch dev2
  680  git switch dev2
  681  touch v.txt
  682  git add .
  683  git commit -m "first by dev2"
  684  git switch master
  685  git branch dev3
  686  git switch dev3
  687  touch c.txt
  688  git add. ; git commit -m "first by dev3"
  689  git add . ; git commit -m "first by dev3"
  690  git switch dev2
  691  touch d.txt
  692  git add . ; git commit -m "second by dev2"
  693  git switch dev3
  694  touch e.txt
  695  git add . ; git commit -m "second by dev3"
  696  git switch dev2
  697  touch f.txt
  698  git add . ; git commit -m "third by dev2"
  699  git switch dev3
  700  touch l.txt
  701  git add . ; git commit -m "third by dev3"
  702  git merge dev2
  703  git log --oneline
  704  git log
  705  ls
  706  cd ..
  707  mkdir gitadvancerebase
  708  cd gitadvancerebase/
  709  git init
  710  touch a.txt
  711  git add .
  712  git commit -m "first by master"
  713  git branch de2
  714  git branch dev2
  715  git branch dev3
  716  git switch dev2
  717  touch b.txt
  718  git add . ; git commit -m "first by dev2"
  719  git switch dev3
  720  touch c.txt
  721  git add . ; git commit -m "first by dev3"
  722  git switch dev2
  723  touch d.txt
  724  git add . ; git commit -m "second by dev2"
  725  git switch dev3
  726  touch e.txt
  727  git add . ; git commit -m "second by dev3"
  728  git rebase dev2
  729  git add .
  730  git commit -m "rebase done"
  731  git log
  732  ls
  733  git log
  734  git switch master
  735  git merge dev3
  736  git log --oneline
  737  git switch dev3
  738  ls
  739  vi a.txt
  740  git add .
  741  git switch master
  742  cat a.txt
  743  git switch dev3
  744  cat a.txt
  745  git status
  746  git stash list
  747  git stash save "incomplete a.txt file with algo"
  748  git stash list
  749  git status
  750  git switch master
  751  cat a.txt
  752  git switch dev3
  753  cat a.txt
  754  git stash pop
  755  cat a.txt
  756  git stash list
  757  vi a.txt
  758  git add .
  759  git commit -m "a.txt updated"
  760  vi b.txt
  761  git add .
  762  git status
  763  git stash save "b.txt"
  764  git switch master
  765  vi b.txt
  766  git add .
  767  git commit -m "updated b.txt from master"
  768  git switch dev3
  769  cat b.txt
  770  git stash list
  771  git stash apply stash@{0}
  772  cat b.txt
  773  git merge master
  774  git stash branch
  775  git stash save "incompleted code"
  776  cat b.txt
  777  git stash list
  778  git stash list
  779  git merge master
  780  cat b.txt
  781  git stash list
  782  git stash apply stash@{0}
  783  cat a.txt
  784  cat b.txt
  785  vi b.txt
  786  git add .
  787  git commit -m "changes updated"
  788  cat a.txt
  789  cat b.txt
  790  ls
  791  git remote -v
  792  $ git remote -v
  793  git remote add origin https://github.com/Trainersudhanshu/testgfg24repo.git
  794  $ git remote -v
  795  git remote -v
  796  git config -l
  797  git log
  798  git config user.name Trainersudhanshu
  799* git config user.email sudhanshutest123@gmail.com
  800  git config
  801  git config -l
  802  git remote -v
  803  git push -u origin dev3
  804  git push -u origin dev3
  805  git remote set-url origin https://Trainersudhanshu:<Token>@github.com/Tainersudhanshu/testgfg24repo.git
  806  clear
  807  git push -u origin dev3
  808  git remote set-url origin https://Trainersudhanshu:<Token>@github.com/Trainersudhanshu/testgfg24repo.git
  809  clear
  810  git push -u origin dev3
  811  hidtory
  812  history
