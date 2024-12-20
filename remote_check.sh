#!/bin/bash

##
# BASH script that checks the following:
#   - Memory usage
#   - CPU load
#   - Number of TCP connections
#   - Kernel version
##

##
# Memory check
##
server_name=$(hostname)

function memory_check() {
    echo "#######"
	echo "The current memory usage on ${server_name} is: "
	free -h
	echo "#######"
}


function cpu_check() {
    echo "#######"
	echo "The current CPU load on ${server_name} is: "
    echo ""
	uptime
    echo "#######"
}

function tcp_check() {
    echo "#######"
	echo "Total TCP connections on ${server_name}: "
    echo ""
	cat  /proc/net/tcp | wc -l
    echo "#######"
}

function kernel_check() {
    echo "#######"
	echo "The exact Kernel version on ${server_name} is: "
	echo ""
	uname -r
    echo "#######"
}

function m1(){
    echo "Uso del disco en carpeta actual:"
    du -h

    echo "Espacio consumido en disco:"
    df -h

    echo "Contenedores:"
    docker ps -a

    echo "Memoria ram usada y libre:"
    free -h

    echo "Escanea puertos abiertos:"
    nmap -A 161.35.58.189
}

function all_checks() {
	memory_check
	cpu_check
	tcp_check
	kernel_check
}

#all_checks
m1