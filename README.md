# ansible-bootstrap-pc

Este é meu **Ansible playbook** para me ajudar a reconstruir minha estação de trabalho.

Distribuição atual em uso:
- Fedora 36

## Utilização

Para utilizar esse playbook você precisa ter instalado em sua maquina o **SO** base, e as seguintes ferramentas:
- Ansible
- Git
- Make

```bash
sudo dnf install make, git, ansible
```

Executando o playbook:
```bash
git clone https://github.com/marciopaiva/ansible-bootstrap-pc.git
cd ansible-bootstrap-pc
```

Altere o arquivo hosts.yml, ajustando a variavel ansible_become_password com sua senha de sudo.

```bash
make
```

## Opções disponíveis
- system-update
- vs-code
- bash-pureline

Executando o playbook com opção especifica:
```bash
git clone https://github.com/marciopaiva/ansible-bootstrap-pc.git
cd ansible-bootstrap-pc
make vs-code 
```
