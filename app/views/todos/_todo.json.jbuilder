json.extract! todo, :id, :name, :photo, :task, :created_at, :updated_at
json.url todo_url(todo, format: :json)
