#!/usr/bin/env bash
mkdir -p "${HOME}/.ssh/"
cp -f /tmp/id_* "${HOME}/.ssh/"
chmod 600 "${HOME}"/.ssh/id_*
