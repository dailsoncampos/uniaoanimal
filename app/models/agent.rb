class Agent < ApplicationRecord
  enum category: [:coordenador, :voluntario, :usuario]
  enum status: [:ativo, :inativo]
  has_one :address
end
