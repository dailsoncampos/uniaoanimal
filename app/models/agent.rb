class Agent < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum category: [:tecnico, :coordenador, :voluntario, :usuario]
  enum status: [:ativo, :inativo]
end
