dev:
    rm -rf .terraform
    terraform init -backend-config=dev-vpc/state.tfvars
    terraform apply -auto-approve -var_file=dev_vpc/main.tfvars

prod:
      rm -rf .terraform
      terraform init -backend-config=prod-vpc/state.tfvars
      terraform apply -auto-approve -var_file=prod_vpc/main.tfvars

dev-destroy:
            rm -rf .terraform
            terraform init -backend-config=dev-vpc/state.tfvars
            terraform destroy -auto-approve -var_file=dev_vpc/main.tfvars