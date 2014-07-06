json.array!(@fountains) do |fountain|
  json.extract! fountain, :id, :location, :photo_uri, :updated_by
  json.url fountain_url(fountain, format: :json)
end
