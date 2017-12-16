# reset the firewall for testing
#! /bin/bash
firewall-cmd --list-all
firewall-cmd --permanent --remove-service http
firewall-cmd --permanent --remove-service https
firewall-cmd --permanent --remove-service tftp
firewall-cmd --permanent --remove-service dns
firewall-cmd --permanent --remove-service dhcp
firewall-cmd --permanent --remove-service ntp
firewall-cmd --permanent --remove-service docker-registry
firewall-cmd --permanent --remove-service ldap
firewall-cmd --permanent --remove-service ldaps
firewall-cmd --permanent --remove-service vnc-server

firewall-cmd --permanent --remove-port 5646/tcp
firewall-cmd --permanent --remove-port 5647/tcp
firewall-cmd --permanent --remove-port 5900-5930/tcp
firewall-cmd --permanent --remove-port 8000/tcp
firewall-cmd --permanent --remove-port 8140/tcp
firewall-cmd --permanent --remove-port 8443/tcp
firewall-cmd --permanent --remove-port 9090/udp
firewall-cmd --permanent --remove-port 9090/tcp
firewall-cmd --permanent --remove-port 16514/tcp
firewall-cmd --permanent --remove-port 44321/tcp
firewall-cmd --reload
firewall-cmd --list-all




