class Animal < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :agent
  has_one_attached :image

  enum condition: [:filhote, :adulto, :idoso, :especial]
  enum specie: [:cachorro, :gato]
  enum color: [:preto, :branco, :alaranjado, :caramelo, :rajado]
  enum gender: [:macho, :femea]
  enum size: [:pequeno, :medio, :grande]
  enum status: [:disponivel, :indisponivel]
end
