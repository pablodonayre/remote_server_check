for server in $(cat servers.txt) ; 
    do ssh root@${server} 'bash -s' < ./remote_check.sh ; 
done