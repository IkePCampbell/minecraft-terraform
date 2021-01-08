# minecraft-terraform

 Modify stg.tfvars to modify the host paths and ports you want to expose 
 
 Modify Dockerfile with username you want to give for root (line 5)
 
 Build Dockerfile (docker build -t minecraft .)
 
 Then Terraform plan wtih the varfile! (terraform plan --var-file.vars)
 
 If you want mods, you can store them in the mod folder, then just build a new image with those respective mods. Tagging is best!
