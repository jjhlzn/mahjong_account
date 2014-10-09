json.array!(@rounds) do |round|
  json.extract! round, :id, :game_id, :player1Win, :player2Win, :player3Win, :player4Win
  json.url round_url(round, format: :json)
end
