json.array!(@posts) do |post|
  json.extract! post, :id, :title, :lead, :content, :image, :publish, :slug, :image_link
  json.url post_url(post, format: :json)
end
