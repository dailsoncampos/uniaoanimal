# tmp_dir = Rails.root.join("tmp")

Agent.create name: 'Admin', status: :ativo, category: :coordenador

Agent.create name: 'Admin', status: :ativo, category: :coordenador, email: 'admin@uniaoanimal.org', password: 'admin'

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