json.array!(@user_profiles) do |user_profile|
  json.extract! user_profile, :id, :name, :phone, :tagline, :about, :image, :facebook, :linkedin, :googlegithub, :twitter, :blog, :show_email, :user_id
  json.url user_profile_url(user_profile, format: :json)
end
