# ansible-bootstrap-pc

Este é meu **Ansible playbook** para me ajudar a reconstruir minha estação de trabalho.

Lista das Distribuições em que foi testado:
- Deepin 15.x

## Utilização

Para utilizar esse playbook voce precisa ter instalado em sua maquina o **SO** base, e as seguintes ferramentas:
- Ansible
- Git

Executando o playbook:
```bash
ansible-playbook -i inventory bootstrap.yml --ask-become-pass
```
