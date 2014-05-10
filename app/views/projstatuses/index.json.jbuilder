json.array!(@projstatuses) do |projstatus|
  json.extract! projstatus, :statusname
  json.url projstatus_url(projstatus, format: :json)
end
