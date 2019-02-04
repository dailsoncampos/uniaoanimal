class Adoption < ApplicationRecord
  belongs_to :adopter
  belongs_to :animal
  enum status: [:pendente, :concluido]

  before_create :set_adoption_status

  def set_adoption_status
    self.status ||= 0
  end
end
