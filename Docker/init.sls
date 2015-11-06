/tmp/docker.sh:
  file.managed:
{% if grains['osarch']in ['amd64'] %}
     - source: salt://Docker/docker.sh
{% endif %}
{% if grains['osarch:'] in ['i386'] %}
     - source: salt://Docker/docker32.sh
{% endif %}
     - mode: 777

docker.sh:
   cmd.run:
    - name: /tmp/docker.sh
