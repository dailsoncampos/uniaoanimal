class SuggestionDonation < ApplicationRecord
  enum suggestion_donation: [:alimento, :medicamento]
end
