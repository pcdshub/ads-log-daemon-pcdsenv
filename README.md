ads-log-daemon-pcdsenv
======================

ads-log-daemon environment setup helper for PCDS

Requirements
------------

Requires Python 3.7+ and anything listed in `requirements.txt`

Host package dependencies:

```bash
$ yum groupinstall "Development tools"
$ yum install openldap-devel python-devel
```

Installation
------------

```bash
$ make initialize
```


Running
-------

Check environment variables set in ``run.sh`` and:

```bash
$ ./run.sh
```
