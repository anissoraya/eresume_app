json.extract! summary, :id, :description, :user_id, :created_at, :updated_at
json.url summary_url(summary, format: :json)