resource "aws_security_group" "acesso_ssh" {
  name        = "sg_acesso_ssh_${var.ambiente}"
  description = "Permitir acesso SSH"

  # Regra de Entrada (Inbound)
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # CUIDADO: Em prod, use seu IP real
  }

  # Regra de Saída (Outbound - permite que a máquina baixe atualizações)
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "sg-ssh"
  }
}
