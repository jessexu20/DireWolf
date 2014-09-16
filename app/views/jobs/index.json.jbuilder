json.array!(@jobs) do |job|
  json.extract! job, :id, :name, :content, :field, :tag, :employer, :deadline
  json.url job_url(job, format: :json)
end
