json.array!(@events) do |event|
  json.extract! event, :id, :name, :location, :body, :image, :date, :user_id, :user_id
  json.url event_url(event, format: :json)
end
