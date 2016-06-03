json.array!(@subcategories) do |subcategory|
  json.extract! subcategory, :id, :name, :body, :event_id, :event_id
  json.url subcategory_url(subcategory, format: :json)
end
