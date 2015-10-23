json.array!(@albums) do |album|
  json.extract! album, :id, :albumname, :ownername
  json.url album_url(album, format: :json)
end
