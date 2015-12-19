essential-packages:
  pkg.latest:
    - pkgs:
      - vim-nox
      - sysstat
      - build-essential
      - openssh-server
      - language-pack-en
      - htop
      # We need this to recognize rxvt terminal
      - ncurses-term
      - bash
      - git
      # Python stuff
      - python-pip
      - python-virtualenv
      - python-dev

virtualenv:
  pip.installed:
  - name: virtualenvwrapper

# local settings

us_locale:
  locale.present:
    - name: en_US.UTF-8

default_locale:
  locale.system:
    - name: en_US.UTF-8
    - require:
      - locale: us_locale
