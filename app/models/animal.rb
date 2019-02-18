class Animal < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  scope :disponivel, -> { where(status: 'disponivel') }

  belongs_to :agent
  has_one_attached :image
  has_one :adoption

  enum age_group: [:filhote, :jovem, :adulto, :idoso]
  enum specie: [:cachorro, :gato]
  enum gender: [:macho, :fêmea]
  enum size: [:mini, :pequeno, :medio, :grande, :gigante]
  enum status: [:disponivel, :indisponivel]
  enum vermifugation: [:sim, :não, :sem_informação]
end
