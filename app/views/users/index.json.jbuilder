json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :website, :password, :retrieved_id
  json.url user_url(user, format: :json)
end
