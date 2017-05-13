# Makefile

test:
	ansible-playbook plbk.yml --check

deploy: test
	ansible-playbook base.yml --ask-pass 
	ansible-playbook backend.yml
	ansible-playbook frontend.yml
	ansible-playbook db.yml
	ansible-playbook mailer.yml
