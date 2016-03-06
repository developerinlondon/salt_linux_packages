Salt is a Python-based open source configuration management software and remote execution engine. 


# salt_linux_packages


Salt master configuration

Add following thhings in "/etc/salt/master"

file_roots:
  base:
    - /srv/salt
  
pillar_roots:
  base:
   - /srv/pillar/base

To install package using salt script
    - salt 'minion' state.sls apache2
