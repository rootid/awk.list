
##get all the the cities where distance > 40
awk '$3 > 40  {print $1,$2,$3}' dist.data


awk '{ print NF ,$NF}' dist.data 

awk '{ print NR ,$0 }' dist.data 


#use of string pattern
awk ' $0 == "1-518-402-2100" { print $0 }' numbers.txt 


#simillar to grep "1-518-402-2100" numbers.txt 
awk ' $0 ~ /1-518-402-2100/ { print $0 }' numbers.txt 

#simillar to grep -v "1-518-402-2100" numbers.txt 
awk ' $0 !~ /1-518-402-2100/ { print $0 }' numbers.txt 


#Find all the telephone number
awk ' $0 ~ /[0-9]\-[0-9]+\-[0-9]+\-[0-9]+/ { print $0 }' numbers.txt

##for awk version > 3.1.5
awk ' $0 ~ /[0-9]{1}\-[0-9]{1,3}\-[0-9]{1,3}\-[0-9]{1,3}/ { print $0 }' numbers.txt


#print the total number of records
awk 'END { print NR }' numbers.txt 


#print used size of directory in MB and GB
du -hk /home | awk '{ sum=+$1 } END { printf ("Used size = %.3f MB, %.3f G \n",(sum/1024),(sum/(1024*1024)) ) }'


#split 


awk 'BEGIN { 
    split("auto-da-fe", a, "-"); 
    for (i in a) 
        print a[i] 
    }'

