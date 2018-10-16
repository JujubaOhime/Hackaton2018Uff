json.extract! student, :id, :name, :birth, :score, :created_at, :updated_at
json.url student_url(student, format: :json)
