json.array!(@programme_units) do |programme_unit|
  json.extract! programme_unit, :id, :programme_id, :unit_id
  json.url programme_unit_url(programme_unit, format: :json)
end
