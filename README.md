# Script para Configuração de Múltiplos Endereços FQDN no FortiGate

Este repositório contém um script em Bash para facilitar a configuração de múltiplos endereços FQDN em firewalls FortiGate e a criação de grupos de endereços contendo esses FQDNs.

---

## 📋 Descrição

O script automatiza a criação de configurações no FortiGate, permitindo:

1. **Configuração de Endereços FQDN**: 
   - Gera comandos para adicionar múltiplos endereços FQDN a partir de um arquivo CSV.
   
2. **Criação de Grupo de Endereços**:
   - Agrupa os endereços criados em um único grupo para simplificar a gestão de políticas.

---

## ✅ Pré-requisitos

- **Git**: Deve estar instalado.
- **Sistema Operacional**: Linux ou macOS.
- **Conhecimento Básico**: Familiaridade com linha de comando e configuração de firewalls FortiGate.

---

## 🚀 Instalação

1. Clone o repositório:

   ```bash
   git clone https://github.com/Jonathan-Nascimento/Criando_Multiplos_Object_Addressess_Fortigate.git
   ```

2. Navegue até o diretório:

   ```bash
   cd Criando_Multiplos_Object_Addressess_Fortigate
   ```

---

## ⚙️ Funcionalidades

### 1. **Configuração de Endereços FQDN**
- Lê o arquivo `Endereco_FQDN.csv` contendo entradas no formato:  
  `nome_do_endereco,fqdn`.

- Para cada entrada, o script gera comandos para criar:
  - **Tipo**: `fqdn`
  - **FQDN**: Especificado no arquivo CSV.
  - **Cor**: Configuração visual, valor padrão `10`.

### 2. **Criação de Grupo de Endereços**
- Utiliza o mesmo arquivo CSV para identificar os nomes dos endereços.
- Gera comandos para criar um grupo chamado `meu_grupo_fqdn`, contendo todos os endereços.

---

## 💡 Exemplo de Uso

### 1. Preparação do Arquivo CSV
Crie ou edite o arquivo `Endereco_FQDN.csv` no seguinte formato:

```csv
nome_do_endereco1,exemplo1.com
nome_do_endereco2,exemplo2.com
```

### 2. Gerar Configurações de Endereços e Grupo.
Execute o script:

```bash
./Gera_object-Addresses.sh
```

### 3. Aplicar Configurações no FortiGate.
- Acesse a CLI do FortiGate e entre no modo de configuração de endereços:
  ```bash
  config firewall address
  ```
- Copie o conteúdo do arquivo `config_firewall_address.conf` e cole na CLI.


### 4. Aplicar o Grupo no FortiGate.
- Acesse a configuração de grupos no FortiGate:
  ```bash
  config firewall addrgrp
  ```
- Abra o arquivo `config_firewall_addrgrp.conf`, edite o nome `meu_grupo_fqdn` conforme necessário e copie as configurações para a CLI.

---

## 🛠️ Benefícios

- **Automação**: Reduz o tempo necessário para configurar múltiplos endereços e grupos.
- **Consistência**: Evita erros manuais na configuração.
- **Flexibilidade**: Fácil adaptação para diferentes cenários e ambientes.

---

Dúvidas ou sugestões? Entre em contato através do [GitHub Issues](https://github.com/Jonathan-Nascimento/Criando_Multiplos_Object_Addressess_Fortigate/issues).

