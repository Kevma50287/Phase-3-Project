json.extract! user, :id, :full_name, :username, :password_digest, :email, :created_at, :updated_at
json.url user_url(user, format: :json)
