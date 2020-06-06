.PHONY: run

HOSTS=./ansible/inventory/hosts
PLAYBOOK=./ansible/playbook.yml

run:
	ansible-playbook -i $(HOSTS) $(PLAYBOOK)

dry-run:
	ansible-playbook -i $(HOSTS) $(PLAYBOOK) --syntax-check