#!/usr/bin/env sh
if [ ! -f "$HOME/.ssh/id_rsa" ] ; then
    ssh-keygen -N "" -f "$HOME/.ssh/id_rsa"
fi