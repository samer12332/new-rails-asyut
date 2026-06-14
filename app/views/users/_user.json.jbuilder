json.extract! User, :id, :name, :email, :created_at, :updated_at
json.url User_url(User, format: :json)
