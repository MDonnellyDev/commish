json.array!(@games) do |game|
  json.extract! game, :id, :day, :game_on
  json.url game_url(game, format: :json)
end
