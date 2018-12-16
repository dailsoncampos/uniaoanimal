json.extract! tutor, :id, :name, :email, :phone, :preferences, :created_at, :updated_at
json.url tutor_url(tutor, format: :json)
