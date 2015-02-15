json.array!(@aliases) do |alias|
  json.extract! alias, :id, :name, :avatar, :user_id
  json.url alias_url(alias, format: :json)
end
