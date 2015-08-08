json.array!(@dinner_cookers) do |dinner_cooker|
  json.extract! dinner_cooker, :id, :name
  json.url dinner_cooker_url(dinner_cooker, format: :json)
end
