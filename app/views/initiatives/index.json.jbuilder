json.array!(@initiatives) do |initiative|
  json.extract! initiative, :id, :subject, :tags, :source, :user_id, :details
  json.url initiative_url(initiative, format: :json)
end
