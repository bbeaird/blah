json.array!(@dinners) do |dinner|
  json.extract! dinner, :id, :date_cooked
  json.url dinner_url(dinner, format: :json)
end
