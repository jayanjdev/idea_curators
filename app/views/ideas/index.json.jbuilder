json.array!(@ideas) do |idea|
  json.extract! idea, :id, :subject, :tags, :source, :user_id, :details
  json.url idea_url(idea, format: :json)
end
