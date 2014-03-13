json.array!(@events) do |event|
  json.extract! event, :id, :title, :tagline, :about, :address1, :address2, :suburb, :state, :postcode, :country, :start_date_time, :end_date_time
  json.url event_url(event, format: :json)
end
