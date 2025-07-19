
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
  - ✅ Sistema de assinatura (Sign)

## 📁 Estrutura do Projeto

```
Projeto/
├── provedor/                 # Ambiente do provedor
│   ├── compose.yml           # Orquestração do provedor
│   ├── dns/                  # Servidor DNS (BIND9)
│   ├── portal/               # Portal principal do provedor
│   ├── proxy/                # Proxy reverso (Nginx com SSL)
│   └── webmail/              # Servidor de e-mail (em desenvolvimento)
├── cliente1/                 # Ambiente do cliente 1
│   ├── compose.yml           # Orquestração do cliente 1
│   ├── hotsite/              # Hotsite público
│   ├── portal/               # Portal do cliente
│   └── proxy1/               # Proxy reverso do cliente
```

## 🔭 Objetivos Futuros

- Adicionar o **cliente 2** e **cliente 3**, cada um com:
  - Rede isolada
  - Proxy reverso próprio
  - Portal exclusivo
  - CMS independente

- Finalizar o módulo de **webmail** no provedor com suporte a envio e recebimento de mensagens via SMTP/IMAP com STARTTLS.

## ▶️ Modo de Usar

1. **Clone o repositório:**

```bash
git clone <URL_DO_REPOSITORIO>
cd Projeto
```

2. **Edite o IP configurado no DNS do provedor** e substitua pelo IP da sua máquina local.

3. **Crie as redes Docker manualmente:**

```bash
docker network create --driver bridge parnamac_net
docker network create --driver bridge parnaflix_net
```

4. **Suba os containers:**
   - Primeiro entre na pasta do `cliente1` e suba o ambiente:

```bash
cd cliente1
docker-compose up -d --build
```

   - Em seguida, entre na pasta do `provedor` e suba o ambiente:

```bash
cd ../provedor
docker-compose up -d --build
```

5. **Configure o DNS da sua máquina** para apontar para o IP utilizado no container DNS.

6. **Acesse os serviços nos navegadores:**

- Provedor:
  - `https://portal.parnamac.com.br`

- Cliente 1:
  - `https://portal.netflix.com.br`
  - `https://hotsite.netflix.com.br`
  - `https://sign.netflix.com.br`
