json.extract! answer, :id, :int_value, :poll_question_id, :created_at, :updated_at, :poll_id, :text_value
json.url answer_url(answer, format: :json)
