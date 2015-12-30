json.array!(@conferences) do |conference|
  json.extract! conference, :id, :name, :start_date, :end_date
  json.url conference_url(conference, format: :json)
end
