.DEFAULT_GOAL := help
SHELL         := /bin/bash
RED           := \033[0;31m
GREEN         := \033[0;32m
YELLOW        := \033[1;33m
CYAN          := \033[0;36m
NC            := \033[0m # No Color
WHOAMI        :=`whoami`
MARGEM        := 15

info: header

define HEADER
                          _       _                _                     
                         (_)     | |              | |                    
 _ __ ___   __ _ _ __ ___ _  ___ | |__   __ _ _ __| |__   ___  ___  __ _ 
| '_ ` _ \ / _` | '__/ __| |/ _ \| '_ \ / _` | '__| '_ \ / _ \/ __|/ _` |
| | | | | | (_| | | | (__| | (_) | |_) | (_| | |  | |_) | (_) \__ \ (_| |
|_| |_| |_|\__,_|_|  \___|_|\___/|_.__/ \__,_|_|  |_.__/ \___/|___/\__,_|
endef
export HEADER

help:
	@clear
	@printf "\033c"
	@echo "$$HEADER"
	@printf "\n"	
	@printf "$(YELLOW)Ansible Playbooks para instalação e configuração de ambiente de trabalho.$(NC)\n\n"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "$(GREEN)%-$(MARGEM)s$(NC) %s$(NC)\n", $$1, $$2}'	
	@printf "\n"
	@printf "Utilização: $(RED)make$(NC)$(GREEN)[item]$(NC)\n\n"

.PHONY:


all: ## Executa todas as rotinas de instalação e configuração do ambiente
	@clear
	@ansible-playbook playbooks/run-all.yml

system-update: ## Instalação e configuração dos pacotes basicos
	@clear
	@ansible-playbook playbooks/system-update.yml

vs-code: ## Instalação e configuração do Visual Studio Code
	@clear
	@ansible-playbook playbooks/visual-studio-code.yml

bash-pureline: ## Instalação e configuração do Bash Pureline
	@clear
	@ansible-playbook playbooks/bash-pureline.yml
