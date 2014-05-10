json.array!(@pymtreceiveds) do |pymtreceived|
  json.extract! pymtreceived, :amount, :project_id, :control_1, :control_2
  json.url pymtreceived_url(pymtreceived, format: :json)
end
