json.extract! event, :id, :title, :place, :date, :time, :rmk, :created_at, :updated_at
json.url event_url(event, format: :json)
