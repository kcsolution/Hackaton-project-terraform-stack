# Hackaton-project-terraform-stack - Criar chave

- Execute o comando para criar a chave ssh que será utilizada em todos os exercicios e já coloca-la no lugar correto.

 aws --region us-east-1 ec2 \
 create-key-pair \
 --key-name "fiap-lab" \
 | \
 jq -r ".KeyMaterial" > ~/.ssh/fiap-lab.pem   

- Execute o comando
#chmod 400 ~/.ssh/fiap-lab.pem para que a chave tenha a permissão correta.

# Hackaton-project-terraform-stack - Workspace

- Execute o comando para listar
 #terraform workspace list

- Execute o comando para criar
 #Terraform workpace new prod
  
- Executar o comando para selecionar
 #Terraform workpace select prod

# Hackaton-project-terraform-stack - Instance Profiles

- Listar profiles
 #aws iam list-instance-profiles

- Deletar profiles
 #aws iam delete-instance-profile --instance-profile-name XXXXX

# No terminal execute os comandos substituindo o bucket pelo o que acabou de criar: 
 aws s3 cp ~/.aws/config s3://hackathon-fiap-<sua turma em minusculo>-<numero do seu rm>/instance-need/.aws/config
 aws s3 cp ~/.aws/credentials s3://hackathon-fiap-<sua turma em minusculo>-<numero do seu rm>/instance-need/.aws/credentials
 aws s3 cp ~/.ssh/fiap-lab.pem s3://hackathon-fiap-<sua turma em minusculo>-<numero do seu rm>/instance-need/.ssh/fiap-lab.pem

