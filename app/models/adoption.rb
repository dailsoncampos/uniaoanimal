class Adoption < ApplicationRecord
  belongs_to :adopter
  belongs_to :animal
end
