json.array!(@interactions) do |interaction|
  json.extract! interaction, :id, :user_id, :admin_id, :interaction_type, :occurred
  json.url interaction_url(interaction, format: :json)
end
