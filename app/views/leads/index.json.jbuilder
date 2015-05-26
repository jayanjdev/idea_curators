json.array!(@leads) do |lead|
  json.extract! lead, :id, :subject, :tags, :source, :user_id, :details
  json.url lead_url(lead, format: :json)
end
