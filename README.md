# 🐶🐱 União Animal - Plataforma de Adoção e Doação de Animais

Este projeto é uma plataforma para gerenciar **adoções e doações de animais**, desenvolvida para a ONG União Animal.  
A arquitetura é moderna, escalável e baseada em **microsserviços**, usando **Ruby on Rails**, **Docker** e **RabbitMQ**.

---

## 🚀 Tecnologias utilizadas

- **Ruby on Rails 7.1**
- **Docker & Docker Compose**
- **PostgreSQL**
- **RabbitMQ** (mensageria para eventos)
- **GitHub Actions** (CI/CD)
- **DDD (Domain Driven Design)**
- Microsserviços totalmente desacoplados

---

## 🏗️ Arquitetura

### Microsserviços

| Serviço         | Porta Local | Função principal                       |
|-----------------|-------------|---------------------------------------|
| Users Service   | 3001        | Cadastro e gestão de usuários        |
| Animals Service | 3002        | Cadastro e catálogo de animais       |
| Adoption Service| 3003        | Gerenciamento de adoções/doações     |
| Admin Service   | 3004        | Painel administrativo                |

---

## ⚙️ Como executar localmente

### Pré-requisitos

- Docker
- Docker Compose

### Passos

```bash
git clone https://github.com/sua-ong/ong_uniao_animal.git
cd ong_uniao_animal

docker-compose up --build