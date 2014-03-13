json.array!(@consultations) do |consultation|
  json.extract! consultation, :id, :user_id, :name, :phone, :email, :message, :date_time, :length_in_minutes, :comfirmed, :notes, :actions, :consultation_type
  json.url consultation_url(consultation, format: :json)
end
