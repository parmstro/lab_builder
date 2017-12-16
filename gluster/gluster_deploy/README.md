# gluster_deploy
Deploy a gluster cluster using ansible (no-HA genasha or CIFS)

We are just starting out here. This is part of the POC project

Assumptions:
- deployed by Satellite with a Host Group
- registered to IdM
- systems registered in IdM DNS or equiv.
- executor has all sudo access in IdM

Status: repos enabled for all deployments
Next: 
- basic software install
- config peers
- create basic FS
- create single volume with defined config
