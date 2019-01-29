# tmp_dir = Rails.root.join("tmp")

Agent.create name: 'Dailson', status: :ativo, category: :tecnico
Agent.create name: 'Alice', status: :ativo, category: :coordenador
# Agent.create name: 'Aline', status: :ativo, category: :voluntario

Agent.create name: 'Dailson', status: :ativo, category: :tecnico, email: 'dailson@uniaoanimal.org', password: '123456'
Agent.create name: 'Alice', status: :ativo, category: :coordenador, email: 'alice@uniaoanimal.org', password: '123456'
# Agent.create name: 'Aline', status: :ativo, category: :voluntario, email: 'aline@uniaoanimal.org', password: '123456'

puts "Criando cadastro de animais"
  100.times do |i|
    Animal.create!(
      name: Faker::Dog.name,
      specie: [:cachorro, :gato].sample,
      gender: ["macho", "femea"].sample,
      age_group: [:filhote, :adulto, :idoso].sample,
      status: "disponivel",
      agent_id: Agent.first.id
    )
  end

puts "Cadastros concluídos"