json.array!(@models) do |model|
  json.extract! model, :id, :user
  json.url model_url(model, format: :json)
end
