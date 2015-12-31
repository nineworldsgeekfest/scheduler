json.array!(@people) do |person|
  json.extract! person, :id, :bio, :link_bio, :link_img, :full_name, :prefix, :forename, :surname
  json.url person_url(person, format: :json)
end
