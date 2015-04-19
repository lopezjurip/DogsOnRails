json.array!(@dogs) do |dog|
  json.extract! dog, :id, :name, :male, :user_id, :born_at
  json.url dog_url(dog, format: :json)
end
