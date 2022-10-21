fname="domains.txt"
while read p; 
    do 

    echo "$p" && host $p | awk '{while ( match($0,/([0-9]+\.){3}[0-9]+/) ) { print substr($0,RSTART,RLENGTH); $0=substr($0,RSTART+RLENGTH) } }' >> domainsip.txt
    echo -e "\n"
    sort -u domainsip.txt

done < $fname
echo "done"
