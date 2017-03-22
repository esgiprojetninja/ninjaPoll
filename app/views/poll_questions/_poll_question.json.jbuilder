json.extract! poll_question, :id, :text, :created_at, :updated_at
json.url poll_question_url(poll_question, format: :json)
