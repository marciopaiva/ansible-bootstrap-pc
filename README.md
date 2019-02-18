# ansible-bootstrap-pc

Este é meu **Ansible playbook** para me ajudar a reconstruir minha estação de trabalho.

Lista das Distribuições em que foi testado:
- Fedora 29

## Utilização

Para utilizar esse playbook você precisa ter instalado em sua maquina o **SO** base, e as seguintes ferramentas:
- Ansible
- Git

Executando o playbook:
```bash
git clone https://github.com/marciopaiva/ansible-bootstrap-pc.git
cd ansible-bootstrap-pc
ansible-playbook -i inventory bootstrap.yml --ask-become-pass
```

## TAGs Ansible disponíveis

- system
- bash
- vscode

Executando o playbook com tags especificas:
```bash
git clone https://github.com/marciopaiva/ansible-bootstrap-pc.git
cd ansible-bootstrap-pc
ansible-playbook -i inventory bootstrap.yml --ask-become-pass --tags "vscode,bash"
```

### Playbook VPN Red Hat

Este playbook solicitará seu usuário SSO e senha (pin+token)

```bash
ansible-playbook -i inventory vpn-redhat.yml --ask-become-pass
```