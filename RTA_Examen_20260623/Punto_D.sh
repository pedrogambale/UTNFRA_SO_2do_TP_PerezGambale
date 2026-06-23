#!/bin/bash
# Punto D - Ansible
cd ~/UTN-FRA_SO_Examenes/202406/ansible
ansible-playbook -i inventory/hosts playbook.yml --limit produccion --ask-become-pass
