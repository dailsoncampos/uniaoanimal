FROM ruby:3.2

# Instala dependências básicas
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# Define o diretório de trabalho
WORKDIR /app

# Copia Gemfile e Gemfile.lock antes (para aproveitar cache do Docker)
COPY Gemfile Gemfile.lock ./

# Instala gems
RUN bundle install

# Copia todo o código do app
COPY . .

# Copia script de entrada
COPY entrypoint.sh /usr/bin/entrypoint.sh
RUN chmod +x /usr/bin/entrypoint.sh

# Configura entrypoint
ENTRYPOINT ["/usr/bin/entrypoint.sh"]

# Comando padrão
CMD ["rails", "server", "-b", "0.0.0.0"]
