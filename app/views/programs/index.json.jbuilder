json.array!(@programs) do |program|
  json.extract! program, :id, :start_date, :start_time, :title, :subtitle, :activity_type, :short_description, :long_description, :loc, :mins, :flag_id, :track_id, :person_id, :conference_id
  json.url program_url(program, format: :json)
end
