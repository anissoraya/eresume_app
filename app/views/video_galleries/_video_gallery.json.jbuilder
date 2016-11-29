json.extract! video_gallery, :id, :name, :link, :created_at, :updated_at
json.url video_gallery_url(video_gallery, format: :json)