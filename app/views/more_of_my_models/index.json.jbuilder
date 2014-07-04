json.array!(@more_of_my_models) do |more_of_my_model|
  json.extract! more_of_my_model, :id, :you_betcha, :how_many, :my_model_id
  json.url more_of_my_model_url(more_of_my_model, format: :json)
end
