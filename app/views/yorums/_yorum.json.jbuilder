json.extract! yorum, :id, :mesaj, :created_at, :updated_at
json.url yorum_url(yorum, format: :json)
