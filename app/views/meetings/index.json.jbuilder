json.array!(@meetings) do |meeting|
  json.extract! meeting, :id, :subject, :date, :start_time, :end_time, :details
  json.url meeting_url(meeting, format: :json)
end
