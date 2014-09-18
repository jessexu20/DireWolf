json.array!(@applies) do |apply|
  json.extract! apply, :id
  json.url apply_url(apply, format: :json)
end
