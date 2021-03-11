#!/bin/bash

REPO8="/var/www/html/repos/8"

# Centos 8 repo

CENTOS8="BaseOS Appstream HighAvailability centosplus cr Devel
extras fasttrack PowerTools"
for REPO in ${CENTOS8}; do
mkdir -p "$REPO8"/centos/"$REPO"/
rsync -avrt rsync://mirror.yandex.ru/centos/8/"$REPO"/x86_64/os/ "$REPO8"/centos/"$REPO"/
done

# epel repos
EPEL = "Everything Modular"
for RERO in ${EPEL}; do
mkdir -p "$REPO8"/epel/"$REPO"/{x86_64,SRPMS}/
rsync -avrt rsync://mirror.yandex.ru/fedora-epel/8/"$REPO"/x86_64/ "$REPO8"/epel/"$REPO"/x86_64/
rsync -avrt rsync://mirror.yandex.ru/fedora-epel/8/"$REPO"/SRPMS/ "$REPO8"/epel/"$REPO"/SRPMS/
done

# postgresql repos
POSTGRESQL = "pgrpm-94 pgsrpm-94 pgrpm-95 pgsrpm-95 pgrpm-96 
pgsrpm-96 pgrpm-10 pgsrpm-10 pgrpm-11 pgsrpm-11 pgrpm-12 
pgsrpm-12"
for RERO in ${POSTGRESQL}; do
mkdir -p "$REPO8"/postgresql/"$REPO"/
rsync -avrt rsync://yum.postgresql.org/"$REPO"/redhat/rhel-8-x86_64/ "$REPO8"/postgresql/"$REPO"/
done

# remi
REMI = "debug-php72 debug-php73 debug-php74 debug-remi debug-test debug-test72 debug-test73 debug-test74 
glpi91 glpi92 glpi93 glpi94 modular-test modular php72 php73 php74 remi safe test test72 test73 test74"
for RERO in ${REMI}; do
mkdir -p "$REPO8"/remi/"$REPO"/
rsync -avrt rsync://mirror.reconn.ru/remi/enterprise/8/"$REPO"/x86_64/ "$REPO8"/remi/"$REPO"/
done

# elrepo
ELREPO="elrepo kernel testing extras"
for RERO in ${ELREPO}; do
mkdir -p "$REPO8"/elrepo/"$REPO"/
rsync -avrt rsync://mirror.pit.teraswitch.com/elrepo/"$REPO"/el8/x86_64/ "$REPO8"/elrepo/"$REPO"/
done

# mariadb
MARIADB="10.0-galera 5.5-galera RPM-GPG-KEY-MariaDB bb-10.1-release bb-10.2-release 
bb-10.3-release 10.0 10.1 10.2 10.3 10.4 10.5 5.5"
for RERO in ${MARIADB}; do
mkdir -p "$REPO8"/mariadb/"$REPO"/
rsync -avrt rsync://rsync.osusosl.org/mariadb/"$REPO"/el8/x86_64/ "$REPO8"/mariadb/"$REPO"/
done



