class Donor < ApplicationRecord
  enum status: [:financeira, :medicamento, :alimento, :outro]
end
