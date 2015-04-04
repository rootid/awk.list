#!/usr/bin/awk -f

#git log -v
#get the latest 2 comments

BEGIN {
    FS = : 
    }

$0 ~ /commit/ { print $1  }
$0 ~ /Author/ { print $2 }
$0 ~ /Date/ { print $2 }


