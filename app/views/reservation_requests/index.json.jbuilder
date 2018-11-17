json.array!(@events) do |event|
  json.extract! event, :id, :description
  json.title event.event_title
  json.start event.estimated_date
  json.url reservation_request_url(event, format: :html)
end
