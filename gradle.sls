gradle-key:
  cmd.run:
      - name: |
          add-apt-repository -y  ppa:cwchien/gradle
          apt-get update
gradle:
  pkg.installed
