# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Agent.create name: 'Dailson', status: :ativo, category: :tecnico
Agent.create name: 'Alice', status: :ativo, category: :coordenador
Agent.create name: 'Aline', status: :ativo, category: :voluntario

Agent.create name: 'Dailson', status: :ativo, category: :tecnico, email: 'dailson@uniaoanimal.org', password: '123456'
Agent.create name: 'Alice', status: :ativo, category: :coordenador, email: 'alice@uniaoanimal.org', password: '123456'
Agent.create name: 'Aline', status: :ativo, category: :voluntario, email: 'aline@uniaoanimal.org', password: '123456'