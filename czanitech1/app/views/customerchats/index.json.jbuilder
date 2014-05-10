json.array!(@customerchats) do |customerchat|
  json.extract! customerchat, :chattext, :chataux, :producer_id, :user_id
  json.url customerchat_url(customerchat, format: :json)
end
