json.extract! employment_history, :id, :job_title, :company, :location, :presently_emp, :start_date, :end_date, :description, :user_id, :created_at, :updated_at
json.url employment_history_url(employment_history, format: :json)