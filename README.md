# minecraft-terraform

 Modify stg.tfvars to modify the host paths and ports you want to expose
 Modify Dockerfile with your root permissions (line 5)
 Build Dockerfile (docker build -t minecraft .)
 Then Terraform plan wtih the varfile! (terraform plan --var-file.vars)
