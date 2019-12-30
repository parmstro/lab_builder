Role Name
=========

Role to configure custom (a.k.a. third party) products and repositories

Requirements
------------

This role makes use of the foreman_ansible_modules project. While not 
officially supported as of July 25 2019, these modules are being actively 
developed with the intention of distributing them as supported Ansible modules
in the near future.


Role Variables
--------------

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

This role must be delegated to a host that has the foreman_ansible_modules 
project downloaded. Usually, this will be localhost. Once that project
is distributed with Satellite, the requirement to delegate should disappear.

    - hosts: servers
      roles:
         - { role: custom_products, delegate_to: locahost }

License
-------

Apache License, Version 2.0

Author Information
------------------

John Berninger <john dot berninger at redhat dot com>
