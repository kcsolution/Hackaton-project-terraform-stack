# Hackaton-project-terraform-stack

Execute o comando para criar a chave ssh que será utilizada em todos os exercicios e já coloca-la no lugar correto.

 aws --region us-east-1 ec2 \
 create-key-pair \
 --key-name "fiap-lab" \
 | \
 jq -r ".KeyMaterial" > ~/.ssh/fiap-lab.pem   

Execute o comando chmod 400 ~/.ssh/fiap-lab.pem para que a chave tenha a permissão correta.
