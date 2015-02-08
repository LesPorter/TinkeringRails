json.array!(@projects) do |project|
  json.extract! project, :id, :name, :description, :status, :manager, :link
  json.url project_url(project, format: :json)
end
