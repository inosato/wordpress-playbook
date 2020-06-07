.PHONY: run run-first dry-run

HOSTS=./ansible/inventory/hosts
PLAYBOOK=./ansible/playbook.yml


run-first:
	ansible-playbook -i $(HOSTS) $(PLAYBOOK) -t Initial,Basic

run:
	ansible-playbook -i $(HOSTS) $(PLAYBOOK) -t Basic

dry-run:
	ansible-playbook -i $(HOSTS) $(PLAYBOOK) --syntax-check