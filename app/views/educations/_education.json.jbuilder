json.extract! education, :id, :major, :school, :status, :location, :start_date, :end_date, :description, :user_id, :created_at, :updated_at
json.url education_url(education, format: :json)