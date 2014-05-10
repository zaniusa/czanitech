json.array!(@movielinks) do |movielink|
  json.extract! movielink, :moviename, :movielink, :moviedescription
  json.url movielink_url(movielink, format: :json)
end
