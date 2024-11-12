### Descrição do Script

Este repositório contém um script em Bash para configuração de de múltiplos endereços FQDN em um firewall FortiGate e a criação de um grupo de endereços que inclua esses FQDNs.

#### Funcionalidade

O script realiza as seguintes ações:

1. **Configuração de Endereços FQDN**:
   - Lê um arquivo CSV (`Endereco_FQDN.csv`) contendo uma lista de endereços no formato `nome,fqdn`.
   - Para cada entrada, cria uma configuração de endereço no FortiGate com:
     - `type fqdn`: Define o tipo como FQDN.
     - `fqdn`: Define o FQDN com o valor especificado no CSV.
     - `associated-interface`: Associa o endereço à interface `npu_vlink1_3000`.
     - `color`: Define uma cor para visualização (neste caso, `10`).
  
2. **Configuração do Grupo de Endereços**:
   - Lê o mesmo arquivo CSV (`Endereco_FQDN.csv`), porém considera apenas o nome dos endereços (primeiro campo) para incluí-los em um grupo de endereços.
   - Cria um grupo chamado `meu_grupo_fqdn` no FortiGate, adicionando todos os endereços em uma única linha para facilitar a visualização e manutenção.
  
#### Exemplo de Uso

1. Prepare o arquivo CSV `Endereco_FQDN.csv` no formato:
   ```csv
   nome_do_endereco1,exemplo.com
   nome_do_endereco2,exemplo2.com
   ```
2. Execute o script:
   ```bash
   ./nome_do_script.sh
   ```

Este script automatiza a configuração de múltiplos endereços FQDN e a criação de grupos no FortiGate, facilitando a gestão de políticas baseadas em domínios.
