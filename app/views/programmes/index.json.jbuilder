json.array!(@programmes) do |programme|
  json.extract! programme, :id, :user_id, :start_date_time, :end_date_time
  json.url programme_url(programme, format: :json)
end
