{% if grains['os_family'] in ['RedHat'] %}
httpd:
  pkg:
   - installed
{% endif %}

{% if grains['os_family'] in ['Debian'] %}
apache2:
  pkg:
    - installed
{% endif %}

  service:
    - running
    - enable: True
