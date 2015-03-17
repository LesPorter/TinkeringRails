json.array!(@students) do |student|
  json.extract! student, :id, :name, :major, :photo
  json.url student_url(student, format: :json)
end
