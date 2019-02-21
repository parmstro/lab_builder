This set of roles and plays is designed to configure the infrastructure elements in Satellite appropriate for a POC of Red Hat Technologies including:
- Red Hat Identity Management
- Red Hat Satellite
- Red Hat Ansible Tower
- Red Hat CloudForms Management Engine
- Red Hat Gluster Storage
- Red Hat OpenShift Container Platform

The roles / plays will:
- create a domain
- create a realm
- create a subnet with supplied IP information
- create a compute resource of a specified type with supplied credentials
- create a compute profile for virtualization nodes appropriate for OpenShift
- create a compute profile for virtualization nodes appropriate for Gluster
- create global parameters appropriate for IdM integration

