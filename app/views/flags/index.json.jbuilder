json.array!(@flags) do |flag|
  json.extract! flag, :id, :name, :flag_type
  json.url flag_url(flag, format: :json)
end
