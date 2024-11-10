#!/usr/bin/env bash
set -ouex pipefail

# Get location of this script.
wd=$(dirname "$(readlink -f "$0")")

# Install required ansible packages.
rpm-ostree install --idempotent ansible python-psutil

# Run ansible.
pushd "${wd}/ansible"
    ansible-playbook playbook.yaml
popd
