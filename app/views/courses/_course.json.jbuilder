json.extract! course, :id, :name, :visible, :available, :category_id, :description, :created_at, :updated_at
json.url course_url(course, format: :json)
