json.extract! donor, :id, :name, :phone, :email, :donation, :message, :created_at, :updated_at
json.url donor_url(donor, format: :json)
