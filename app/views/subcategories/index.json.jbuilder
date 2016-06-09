json.array!(@subcategories) do |subcategory|
  json.extract! subcategory, :id, :name, :description, :cost, :paid, :event_id, :user_id
  json.url subcategory_url(subcategory, format: :json)
end
