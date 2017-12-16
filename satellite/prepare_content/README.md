This set of roles and plays is designed to select and synchronize content appropriate for a POC of Red Hat Technologies including:
- Red Hat Identity Management
- Red Hat Satellite
- Red Hat Ansible Tower
- Red Hat CloudForms Management Engine
- Red Hat Gluster Storage
- Red Hat OpenShift Container Platform

The roles / plays will:
- verify the apprpriate subscriptions exist
- select appropriate product and repositories for synchronization
- add puppet product and repositories fore synchronization if necessary
- synchronization Plans will NOT be created at this time
- manual synchronization will be started
- a simple Content Life Cycle will be created - DEV/QA/PROD
- a basic Red Hat Enterprise Linux SOE content view will be created
- a composite content view will be created for OpenShift
- a composite content view will be created for Gluster
- the content views will be published and promoted to the DEV environment
- a host group will be created for OpenShift systems
- a host group will be created for Gluster systems

