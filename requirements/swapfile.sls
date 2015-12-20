/swapfile:
  cmd.run:
    - name: "fallocate -l {{ salt['pillar.get']('requirements:swapfile-size', '512m') }} /swapfile && chmod 600 /swapfile && mkswap /swapfile"
    - unless: test -f /swapfile
  mount.swap:
    - require:
      - cmd: /swapfile
