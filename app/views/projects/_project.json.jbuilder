json.extract! project, :id, :title, :company, :project_date, :description, :user_id, :created_at, :updated_at
json.url project_url(project, format: :json)