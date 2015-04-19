json.array!(@breeds) do |breed|
  json.extract! breed, :id, :breed, :description
  json.url breed_url(breed, format: :json)
end
