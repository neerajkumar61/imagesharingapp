json.array!(@photos) do |photo|
  json.extract! photo, :id, :image, :tag_line_for_photo
  json.url photo_url(photo, format: :json)
end
