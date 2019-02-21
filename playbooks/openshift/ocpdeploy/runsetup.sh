#! /bin/bash 
while true; do
    read -p "This will run the ansible installer for OpenShift. Are you ready? (y|n)" yn
    case $yn in
        [Yy]* ) echo "Launching play"; ansible-playbook -i /etc/ocpdeploy/hosts /usr/share/ansible/openshift-ansible/playbooks/byo/config.yml; mv -f /etc/ocpdeploy/htpasswd.ocpdeploy /etc/ocpdeploy/htpasswd; break;;
        [Nn]* ) echo "Exiting"; exit;;
    esac
done

