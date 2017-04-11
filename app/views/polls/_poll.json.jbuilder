json.extract! poll, :id, :active, :name, :pub_date, :description, :created_at, :updated_at
json.url poll_url(poll, format: :json)
