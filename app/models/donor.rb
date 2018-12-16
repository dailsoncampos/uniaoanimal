class Donor < ApplicationRecord
  enum donation: [:financeira, :medicamento, :alimento, :outro]

  validates_presence_of :name, :phone, :email
end
