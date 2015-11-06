/tmp/wildfly-8.2.1.Final.tar.gz:
  file.managed:
    - source: http://olex.openlogic.com/package_versions/26491/download?package_version_id=103931&path=https%3A%2F%2Folex-secure.openlogic.com%2Fcontent%2Fprivate%2F5e6a6f0815e830bba705e79e4a0470fbee8a5880%2F%2Folex-secure.openlogic.com%2Fwildfly-8.2.1.Final.tar.gz
    - template: jinja

wildfly-8.2.1.Final.tar.gz:
 cmd.run: 
   - name: tar xf /tmp/wildfly-8.2.1.Final.tar.gz
   - cwd: /opt

