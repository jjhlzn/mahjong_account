json.array!(@games) do |game|
  json.extract! game, :id, :player1, :player2, :player3, :player4, :chipCount, :price
  json.url game_url(game, format: :json)
end
