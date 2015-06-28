json.array!(@players) do |player|
  json.extract! player, :id, :fullName, :points, :shoptechEmail
  json.url player_url(player, format: :json)
end
