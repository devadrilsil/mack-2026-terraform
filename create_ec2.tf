resource "aws_instance" "servidor_processamento" {
  ami           = var.ami_id
  instance_type = var.instance_type

  # Associando o Security Group criado acima
  vpc_security_group_ids = [aws_security_group.acesso_ssh.id]

  # Exemplo de Script de Inicialização (User Data)
  # Isso instala o cliente do AWS CLI e o Python para você começar a trabalhar
  user_data = <<-EOF
              #!/bin/bash
              sudo yum update -y
              sudo yum install -y python3 awscli
              EOF

  tags = {
    Name        = "instancia-big-data-${var.ambiente}"
  }
}
