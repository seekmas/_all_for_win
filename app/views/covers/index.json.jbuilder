json.array!(@covers) do |cover|
  json.extract! cover, :id, :user_id, :cover
  json.url cover_url(cover, format: :json)
end
