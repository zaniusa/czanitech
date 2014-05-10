json.array!(@pymts) do |pymt|
  json.extract! pymt, :order_to_show, :pymt_status
  json.url pymt_url(pymt, format: :json)
end
