json.array!(@photos) do |photo|
  json.extract! photo, :id, :title, :retrieved_id, :album_id, :retrieved_album_id, :thumbnail_url, :url
  json.url photo_url(photo, format: :json)
end
