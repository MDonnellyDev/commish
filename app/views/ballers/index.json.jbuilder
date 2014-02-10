json.array!(@ballers) do |baller|
  json.extract! baller, :id, :name, :email, :phone, :active
  json.url baller_url(baller, format: :json)
end
