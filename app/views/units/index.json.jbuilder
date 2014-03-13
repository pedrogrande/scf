json.array!(@units) do |unit|
  json.extract! unit, :id, :unit_type_id, :name, :tagline, :description, :hours, :points, :difficulty, :online, :offline
  json.url unit_url(unit, format: :json)
end
