json.array!(@enquiries) do |enquiry|
  json.extract! enquiry, :id, :name, :email, :phone, :subject, :message, :user_id, :followed_up
  json.url enquiry_url(enquiry, format: :json)
end
