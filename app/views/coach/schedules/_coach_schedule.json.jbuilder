json.extract! coach_schedule, :id, :title, :weekday, :start, :end, :created_at, :updated_at
json.url coach_schedule_url(coach_schedule, format: :json)
