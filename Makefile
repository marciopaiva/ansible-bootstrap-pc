.DEFAULT_GOAL := help
SHELL         := /bin/bash
RED           := \033[0;31m
GREEN         := \033[0;32m
YELLOW        := \033[1;33m
CYAN          := \033[0;36m
NC            := \033[0m # No Color
WHOAMI        :=`whoami`

help:
	@printf "Uso: make [opções]\n\n"
	@printf "$(YELLOW)Ansible Playbook para configuração do meu ambiente de trabalho.$(NC)\n\n"
	@printf "opções:\n"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "$(GREEN)%-20s$(NC) %s$(NC)\n", $$1, $$2}'
	@printf "\n"

.PHONY:

all: ## Executa todas as rotinas de instalação e configuração do ambiente
	@ansible-playbook playbooks/run-all.yml

system-update: ## Instalação e configuração dos pacotes basicos
	@ansible-playbook playbooks/system-update.yml

vs-code: ## Instalação e configuração do Visual Studio Code
	@ansible-playbook playbooks/visual-studio-code.yml

bash-pureline: ## Instalação e configuração do Bash Pureline
	@ansible-playbook playbooks/bash-pureline.yml

redhat-vpn: ## Instalação e configuração da VPN Red Hat
	@ansible-playbook playbooks/redhat-vpn.yml