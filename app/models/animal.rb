class Animal < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :agent
  has_one_attached :image

  enum age_group: [:filhote, :jovem, :adulto, :idoso]
  enum specie: [:cachorro, :gato]
  enum gender: [:macho, :femea]
  enum size: [:pequeno, :medio, :grande]
  enum status: [:disponivel, :indisponivel]
end
