json.array!(@scripts) do |script|
  json.extract! script, :project, :notes, :step1, :step2, :step3, :step4, :step5, :user_id
  json.url script_url(script, format: :json)
end
