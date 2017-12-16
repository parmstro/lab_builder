# idm-server
Build a new idm server or replica for a Red Hat POC environment. Use this role to build an IdM Server that will provide the basic users, groups, host groups, sudo rules, and hbac rules necessary to evaluate Red Hat products including: Red Hat Satellite, Red CloudForms, Red Hat Ansible Tower, Red Hat OpenShift Container Platform and others. 

For an example of the variable usage, please see adds_only.yml. The adds_only playbook can be used to add the relevant IdM content to an existing IdM server. Please see the requirements section.

## Status
Currently only the IdM Server build is implemented.

## Requirements
When running the adds_only play, ensure that the user set for ansible_user has HBAC and sudo access to the IdM server. Currently, the ansible_user set in adds_only is admin@REALM.COM. This allows several configuration tasks to run on the idm server with the proper permissions after installation. If you are running the adds_only playbook, edit the vars section to reflect your login, domain and REALM. Also, idm_admin_password and default_password are expected on the command-line as environment variables.  

## Suggested use

1. Build an @base Red Hat Enterprise Linux 7 system. 
2. If you are going to run directly from the IdM server
   - Enable the rhel-7-server-extras-rpms repo
   - Install ansible and git
3. Clone this repo to the server with ansible on it
4. Edit the hosts file to include your host
5. Edit the main.yml, adds_only.yml file to configure your variables. (Or set them in tower)
6. Run the playbook.
   - ansible-playbook -i hosts -e idm_admin_password=2017POCOcelotRandomHouseholdMoonbeam -e dirserv_password=2017POCOcelotRandomHouseholdMoonbeam -e default_password=2017POCOcelotRandomHouseholdMoonbeam main.yml
7. Enjoy!


## What does it do?

This role will install and configure the IdM server, it will also:
- configure firewalld for use with IdM
- add a set of basic users to the IdM environment for standard demonstrations and use cases
- set up the groups used to provide standard roles in Satellite
- set up the groups used to provide standard roles in CloudForms 
- set up the groups used to provide standard roles in Tower
- set up the groups used to provide standard roles in Openshift Container Platform
- set up sample sudo rules and add the appropriate users, groups and hostgroups to the rules
- set up sample hbac rules and add the appropriate users, groups and hostgroups to the rules

Pull requests are welcome if you want to enhance any of the above or add additional config for more products.

Cheers,

Paul
