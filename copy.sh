#!/usr/bin/env sh
# Helper script for copying other helper scripts to remote box

HOST=rpm

rsync build.sh $HOST:/home/fedora/
rsync connect.sh $HOST:/home/fedora/
rsync install.sh $HOST:/home/fedora/
rsync opendaylight.service $HOST:/home/fedora/
rsync opendaylight.spec $HOST:/home/fedora/
rsync uninstall.sh $HOST:/home/fedora/
rsync opendaylight.repo $HOST:/home/fedora
