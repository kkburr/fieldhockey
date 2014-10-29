json.array!(@programs) do |program|
  json.extract! program, :id, :grade, :type, :dates, :times, :venue, :county, :coach
  json.url program_url(program, format: :json)
end
