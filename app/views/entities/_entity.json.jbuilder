# Service to download ftp file from the server
json.extract! entity, :id, :name, :amount, :created_at, :updated_at
json.url entity_url(entity, format: :json)
