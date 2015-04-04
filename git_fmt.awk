#!/usr/bin/awk -f

#git log -v
#get the latest 2 comments

BEGIN {
    FS = : 
    }


#commit b83f755027978ad5c0dcce84543d118987b8e9c7
#Author: vikram <vikramsi@buffalo.edu>
#Date:   Wed Apr 1 20:40:39 2015 -0400

$0 ~ /commit/ { print $1  }
$0 ~ /Author/ { print $2 }
$0 ~ /Date/ { print $2 }


