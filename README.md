# lab_builder
Hi. 

If you want to build a Red Hat Lab environment starting from nothing but 2 bare metal systems, this is the repo. If you already have a hypvisor deployed or are working with the cloud, you may find some of the code valuable, but this is not the core purpose. This code should work equally well with two virtual machines...

Yes we are back here to the old lab_builder code. There are issues with the redhat.satellite collection that is being built upstream that prevent using it completely as a method to build content views. See the issues pages for foreman-ansible-modules

- [Create more than one filter issue] (https://github.com/theforeman/foreman-ansible-modules/issues/695)
- [Create module filters issue] (https://github.com/theforeman/foreman-ansible-modules/issues/854)
- and others...

lab_builder uses the underlying hammer commands. It builds hammer commands and implements them. The code is idempotent is the way that it builds a Satellite from scratch and you will get the configuration that you define. It is a complete rebuild of the system though, it destroys and recreates. It is not intended for maintenance. This is in part due to the nature of satellite and all the dependent parts. The foreman-ansible-modules code does a better job of this, but is currently missing features. For a version of this code that uses the redhat.satellite collection, please see the [labbuilder2] (https://github.com/parmstro/labbuilder2)repo

lab_builder is kludgy, but it works

The lab build includes:
- Red Hat Identity Management with "POC" users, groups, HBAC and sudo
- Red Hat Satellite 6.x with all the bells and whistles turned on

I still use this to rebuild Satellite 6.10.x

There are two ways to run this code.
- Start from scratch with two identical imaged systems and build a new lab
- use foreman_post_only.yml to configure a freshly deployed satellite system

The variable files are complex. You must take time to inspect them and the comments in the plays in the root of the repo.

The goal of future labbuilder projects is to extract a yaml configuration definition from Satellite, then have labbuilder consume that to drive the configuration of a newly deployed Satellite and eventually maintain the target satellite. For now, these are hand crafted based on the sample provided.

## Starting from scratch
This builds the two core systems in the lab
- IDM master - this provides authentication, DNS, certificates, sudo authorization, etc.. for the lab. It also functions as an ansible controller for the initial build. Also called the build_master
- Satellite server - this is the worker node that will build everything else. For obvious reasons called the foreman.

The build from scratch uses a template RHEL7.9 image that shares ssh keys to allow the systems to help boot strap one another. For my environment, it was built this way so you could start literally from scratch. Two bare metal machines and nothing else. 




