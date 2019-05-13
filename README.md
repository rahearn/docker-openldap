OpenLDAP Docker Container
=========================

Basic ldap server based on https://github.com/osixia/docker-openldap

Build
-----

`docker build . --build-arg LDAP_ADMIN_PASSWORD=<ADMIN_PASSWORD> -t ldap`

Run
---

`docker run -p 389:389 -p 636:636 --name openldap --detach --rm ldap`

Basic Search
------------

`ldapsearch -x -H ldap://localhost -b dc=18f,dc=gsa,dc=gov -D "cn=admin,dc=18f,dc=gsa,dc=gov" -W`

* `-x` -> simple authentication
* `-H` -> ldap server URI
* `-b` -> what to search for
* `-D` -> user running search
* `-W` -> prompt for password (use `-w <PASSWORD>` to specify inline)

Generate User Password
----------------------

`slappasswd -u -s <PASSWORD>` _or_ `slappasswd -u`
