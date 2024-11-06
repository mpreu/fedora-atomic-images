#!/usr/bin/env bash
set -ouex pipefail

### Install packages

rpm-ostree install --idempotent \
    ansible \
    python-psutil \
    gnome-tweak-tool \
    numix-gtk-theme \
    numix-icon-theme-circle \
    guake \
    git \
    corkscrew \
    davfs2
