json.array!(@tests) do |test|
  json.extract! test, :id, :correctname
  json.url test_url(test, format: :json)
end
