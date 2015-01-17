json.array!(@users_interests_links) do |users_interests_link|
  json.extract! users_interests_link, :id
  json.url users_interests_link_url(users_interests_link, format: :json)
end
