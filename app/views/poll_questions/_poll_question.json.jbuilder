json.extract! poll_question, :id, :value, :created_at, :updated_at
json.url poll_question_url(poll_question, format: :json)
