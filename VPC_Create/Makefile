default:
	echo None

dev:

		 rm  -rf  .terraform
		 terraform  init -backend-config=dev_vpc/state.tfvars
		 terraform  apply -auto-approve -var_file=dev_vpc/main.tfvars

dev-destroy:

			   rm -rf .terraform
			   terraform  init -backend-config=dev_vpc/state.tfvars
			   terraform  destroy -auto-approve -var_file=dev_vpc/main.tfvars