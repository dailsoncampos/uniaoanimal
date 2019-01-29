json.extract! requester, :id, :name, :email, :phone, :identify, :cpf, :street, :number, :sector, :city, :zip, :referency_point, :residence, :fenced_plot, :created_at, :updated_at
json.url requester_url(requester, format: :json)
