json.array!(@runs) do |run|
  json.extract! run, :id, :distance, :initTime, :endTime, :runDate, :user_id
  json.url run_url(run, format: :json)
end
