Projeto Terraform Mack 2026 

Arquitetura da Solução e Fluxo
A solução implementa um Data Lake Funcional na AWS utilizando o conceito de camadas

  Armazenamento (S3)
    Três buckets organizados para separar dados brutos (Raw), dados processados (Refined) e resultados de consultas (Athena).
  Processamento (EC2)
    Uma instância de computação configurada via user_data para instalar automaticamente Python e AWS CLI, permitindo a execução de scripts de ETL.
  Análise (Athena/Glue)
    Dois bancos de dados catalogados que permitem a consulta imediata dos dados via SQL, separando a governança entre o que é bruto e o que é refinado.
  Segurança
    Um Security Group dedicado que protege a instância, liberando apenas o acesso administrativo via SSH.


Destaques Técnicos
Padronização e Reuso
  Uso de variables.tf e locals.tf para que toda a infraestrutura seja parametrizável por ambiente (ex: dev, prod) e região.
Governança Automatizada
  Implementação de default_tags no arquivo provider.tf, garantindo que 100% dos recursos recebam automaticamente etiquetas de projeto e ambiente para controle de custos.
Interpolação de Nomes
  Nomes de buckets e bancos de dados são gerados dinamicamente para evitar conflitos e seguir boas práticas de nomenclatura na nuvem.
Configuração de Provedor
  Arquivo provider.tf estruturado para suportar autenticação via tokens temporários.


Estrutura do Projeto
O código foi modularizado em arquivos específicos por serviço.
