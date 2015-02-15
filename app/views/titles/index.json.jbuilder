json.array!(@titles) do |title|
  json.extract! title, :id, :icon, :name, :color
  json.url title_url(title, format: :json)
end
