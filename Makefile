.PHONY: all
all: terraform-fmt terraform-init terraform-validate terraform-plan cleanup
apply: terraform-apply
destroy: terraform-destroy

SHELL := /bin/bash -l

terraform-fmt:
	terraform fmt && \
	cd vars && terraform fmt && cd .

terraform-init:
	terraform init -input=false

terraform-validate:
	terraform validate

terraform-plan:
	terraform plan --var-file=vars/values.tfvars -out terraform.tfplan

terraform-apply: all
	terraform apply --var-file=vars/values.tfvars --auto-approve

terraform-destroy:
	terraform destroy --var-file=vars/values.tfvars --auto-approve

cleanup:
	rm -rf terraform.tfplan