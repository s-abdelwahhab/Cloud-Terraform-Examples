1. Install the [Terraform cli](https://learn.hashicorp.com/tutorials/terraform/install-cli)
2. Generate the API key for Elastic Cloud deployments creation
3. Use the API key you generated as a variable in the configuration
4. Run `terraform init -upgrade`
5. Run `terraform apply`
6. Create a deployment on Elastic Cloud to be imported

    **Option 1:**
    1. Rename the file `existing_production_dep.j2` to `existing_production_dep.tf` 
    2. Run `terraform apply` again
    2. Remove the deployment resource description from the `terraform.tfstate`
    3. Run the import command `terraform import ec_deployment.existing_prod_example_minimal <Deployment ID>`
    4. Run `terraform apply` to compare the real infrastructure against your configuration

    **Option 2: the tedious one**
    1. Rename the Rename the file `existing_production_dep.j2` to `existing_production_dep.tf`
    2. Create a new deployment manually with the same description in the `file existing_production_dep.j2` or edit the file to suite any of your existing deployments
    3. Run the import command `terraform import ec_deployment.existing_prod_example_minimal <Deployment ID>`
    4. Run `terraform apply` to compare the real infrastructure against your configuration
