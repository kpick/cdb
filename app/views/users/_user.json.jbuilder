json.extract! user, :id, :name, :first_name, :last_name, :email, :admin, :created_at, :updated_at
json.url user_url(user, format: :json)
