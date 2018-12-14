class Animal < ApplicationRecord
  belongs_to :agent

  enum condition: [:filhote, :adulto, :idoso, :especial]
  enum species: [:cachorro, :gato]
  enum pelage: [:curto, :longo, :encaracolado, :dupla, :longo_e_curto]
  enum color: [:preto, :branco, :alaranjado, :caramelo, :rajado]
  enum genre: [:macho, :femea]
  enum size: [:pequeno, :medio, :grande]
  enum status: [:disponivel, :indisponivel]
end
