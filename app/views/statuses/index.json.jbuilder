json.array!(@statuses) do |status|
  json.extract! status, :id, :user_id, :status_text
  json.url status_url(status, format: :json)
end
