json.array!(@albums) do |album|
  json.extract! album, :id, :title, :retrieved_id, :retrieved_user_id, :user_id, :thumbnail_url
  json.url album_url(album, format: :json)
end
