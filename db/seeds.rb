# tmp_dir = Rails.root.join("tmp")

Agent.create name: 'Dailson', status: :ativo, category: :tecnico
Agent.create name: 'Alice', status: :ativo, category: :coordenador
Agent.create name: 'Aline', status: :ativo, category: :voluntario

Agent.create name: 'Dailson', status: :ativo, category: :tecnico, email: 'dailson@uniaoanimal.org', password: '123456'
Agent.create name: 'Alice', status: :ativo, category: :coordenador, email: 'alice@uniaoanimal.org', password: '123456'
Agent.create name: 'Aline', status: :ativo, category: :voluntario, email: 'aline@uniaoanimal.org', password: '123456'

# event_1 = Event.create(title: "3º Festival de Tortas", place: 'Praça do Pescador', date: Date.new(2018, 12, 15, 0), time: Time.new() )
# event_1.image.attach(io: File.open("#{tmp_dir}/imagens/eventos/evento_1.jpg"))