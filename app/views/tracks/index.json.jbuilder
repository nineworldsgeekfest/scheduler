json.array!(@tracks) do |track|
  json.extract! track, :id, :name, :short_description, :long_description, :link_img, :conference_id
  json.url track_url(track, format: :json)
end
