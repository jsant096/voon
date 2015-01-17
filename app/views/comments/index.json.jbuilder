json.array!(@comments) do |comment|
  json.extract! comment, :id, :created_by, :updated_by, :Commentscol, :event_id
  json.url comment_url(comment, format: :json)
end
