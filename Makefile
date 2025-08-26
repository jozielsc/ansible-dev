include .env

provision:
	@echo "Provisionando VM ${VM_IP} com usuário ${VM_USER}"
	ansible-playbook -i playbooks/inventory.yml playbooks/site.yml --ask-become-pass

