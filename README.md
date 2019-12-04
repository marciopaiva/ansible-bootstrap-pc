# ansible-bootstrap-pc

Este é meu **Ansible playbook** para me ajudar a reconstruir minha estação de trabalho.

Distribuição atual em uso:
- Fedora 31

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
make all
```

## Opções disponíveis
- system-update
- vs-code
- bash-pureline
- gnome-theme

Executando o playbook com opção especifica:
```bash
git clone https://github.com/marciopaiva/ansible-bootstrap-pc.git
cd ansible-bootstrap-pc
make vs-code 
```
