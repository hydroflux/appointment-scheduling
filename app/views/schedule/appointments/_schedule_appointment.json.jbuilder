json.extract! schedule_appointment, :id, :title, :start, :end, :duration, :description, :user_id, :coach_id, :schedule_id, :created_at, :updated_at
json.url schedule_appointment_url(schedule_appointment, format: :json)
