json.array!(@veterinaries) do |veterinary|
  json.extract! veterinary, :id, :name, :address, :phone
  json.url veterinary_url(veterinary, format: :json)
end
