json.extract! textbook, :id, :name, :condition, :edition, :created_at, :updated_at
json.url textbook_url(textbook, format: :json)
