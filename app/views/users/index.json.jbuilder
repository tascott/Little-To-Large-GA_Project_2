json.array!(@users) do |user|
  json.extract! user, :id, :username, :email, :first_name, :last_name, :profile_photo, :password_digest
  json.url user_url(user, format: :json)
end
