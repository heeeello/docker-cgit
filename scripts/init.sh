#!/bin/bash
/opt/auth.sh

if [[ -z "$CGIT_CONFIG_DIR" ]]; then
    export CGIT_CONFIG_DIR=/etc/cgit
fi
ln -sf $CGIT_CONFIG_DIR/cgitrc /etc/cgitrc
apachectl -DFOREGROUND
