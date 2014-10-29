json.array!(@players) do |player|
  json.extract! player, :id, :first_name, :last_name, :usfha_number, :school, :grade, :birthday, :allergies
  json.url player_url(player, format: :json)
end
