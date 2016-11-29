json.extract! personal_detail, :id, :name, :address, :city, :state, :postal_code, :phone_no, :user_id, :created_at, :updated_at
json.url personal_detail_url(personal_detail, format: :json)