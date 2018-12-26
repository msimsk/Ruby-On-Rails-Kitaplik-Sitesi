json.extract! kitap, :id, :isim, :sayfa, :ozet, :created_at, :updated_at
json.url kitap_url(kitap, format: :json)
