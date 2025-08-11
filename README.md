# Projeto: Infraestrutura de Microsserviços com Docker para Provedores de Internet

## 🧾 Introdução

Este projeto tem como objetivo a implementação de uma infraestrutura baseada em microsserviços utilizando Docker, voltada para provedores de internet e seus respectivos clientes. A arquitetura proposta busca simular, de forma prática, a separação entre provedor e clientes, garantindo segurança, isolamento de redes e comunicação entre serviços essenciais como DNS, correio eletrônico, portais web e proxies reversos com HTTPS.

Cada cliente possui seus próprios serviços e redes isoladas, permitindo o crescimento escalável e seguro da infraestrutura, mantendo a comunicação com o provedor apenas quando necessário — como no uso do serviço de DNS.

## 🎯 Objetivo

Desenvolver uma infraestrutura de microsserviços utilizando Docker para provedores de internet, composta por:

- Serviço de DNS personalizado
- Serviço de correio eletrônico
- Proxy reverso HTTP com Nginx e certificados SSL/TLS
- Garantia de isolamento e segurança entre clientes por meio de:
  - Redes isoladas no Docker
  - Criptografia de dados em trânsito (HTTPS, STARTTLS)

## 🚧 Andamento do Projeto

O projeto encontra-se em desenvolvimento. Atualmente, os seguintes módulos estão finalizados:

- **Provedor**
  - ✅ DNS
  - ✅ Proxy reverso com SSL
  - ✅ Portal institucional
  - ⚙️ Webmail (em desenvolvimento)

- **Cliente 1**
  - ✅ Rede isolada
  - ✅ Proxy reverso com SSL
  - ✅ Portal do cliente
  - ✅ Hotsite
  - ✅ Sistema de login (Sign)

- **Cliente 2**
  - ✅ Rede isolada
  - ✅ Proxy reverso com SSL
  - ✅ Portal do cliente
  - ✅ CMS
  - ✅ Adminer

- **Cliente 3**
  - ✅ Rede isolada
  - ✅ Proxy reverso com SSL
  - ✅ Portal do cliente
  - ✅ CMS
  - ✅ Adminer

## 📁 Estrutura do Projeto

```
Projeto/
├── provedor/ # Ambiente do provedor
│ ├── compose.yml # Orquestração do provedor
│ ├── dns/ # Servidor DNS (BIND9)
│ ├── portal/ # Portal principal do provedor
│ ├── portalproxy/ # Portal do proxy do provedor
│ ├── proxy/ # Proxy reverso (Nginx com SSL)
│ └── webmail/ # Servidor de e-mail (em desenvolvimento)
├── cliente1/ # Ambiente do cliente 1
│ ├── compose.yml # Orquestração do cliente 1
│ ├── hotsite/ # Hotsite público
│ ├── portal/ # Portal do cliente
│ └── proxy1/ # Proxy reverso do cliente
├── cliente2/ # Ambiente do cliente 2
│ ├── compose.yml # Orquestração do cliente 2
│ ├── portal/ # Portal da prefeitura
│ ├── site/ # CMS
│ └── proxy2/ # Proxy reverso do cliente 2
├── cliente3/ # Ambiente do cliente 3
│ ├── compose.yml # Orquestração do cliente 3
│ ├── portal/ # Portal hospitalar
│ ├── site/ # CMS
│ └── proxy3/ # Proxy reverso do cliente 3
```

## 🔭 Objetivos Futuros

- Finalizar os serviços que faltam.

## ▶️ Modo de Usar

1. **Clone o repositório:**

```bash
git clone <URL_DO_REPOSITORIO>
cd Projeto
Edite o IP configurado no DNS do provedor e substitua pelo IP da sua máquina local.

Crie as redes Docker manualmente:

bash
Copiar
Editar
docker network create --driver bridge parnamac_net
docker network create --driver bridge parnaflix_net
docker network create --driver bridge macau_net
docker network create --driver bridge memorial_net
Suba os containers:

Primeiro entre na pasta do cliente1 e suba o ambiente:

bash
Copiar
Editar
cd cliente1
docker-compose up -d --build
Em seguida, entre na pasta do cliente2 e suba o ambiente:

bash
Copiar
Editar
cd ../cliente2
docker-compose up -d --build
Depois, entre na pasta do cliente3 e suba o ambiente:

bash
Copiar
Editar
cd ../cliente3
docker-compose up -d --build
Por fim, entre na pasta do provedor e suba o ambiente:

bash
Copiar
Editar
cd ../provedor
docker-compose up -d --build

Para conseguir acessar as urls dos serviços a partir do navegador é necessário configurar o DNS da sua máquina para apontar para o IP que está sendo utilizado no container DNS.
- Como configurar:
  1: Acesse o painel de controle da sua máquina
  2: Vá para as configurações de Rede e Internet
  3: Clique em central de rede e compartilhamento logo após em alterar as configurações do adaptador
  4: Propriedades >> Protocolo IPv4
  5: Selecione "Usar os seguintes endereços de servidor DNS" e insira o IP utilizado no container DNS

Acesse os serviços nos navegadores:

- Provedor:
  - `https://portal.parnamac.com.br`
  - `https://proxy.parnamac.com.br`

- Cliente 1:
  - `https://portal.netflix.com.br`
  - `https://hotsite.netflix.com.br`
  - `https://sign.netflix.com.br`

 - Cliente 2:

  - `https://portal.macau.com.br`
  - `https://adminer.macau.com.br`
  - `https://cms.macau.com.br`

 - Cliente 3:

  - `https://portal.meorial.com.br`
  - `https://adminer.memorial.com.br`
  - `https://cms.memorial.com.br`
