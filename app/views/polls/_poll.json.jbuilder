#json.extract! poll, :id, :active, :name, :pub_date, :description, :created_at, :updated_at, :poll_questions
json.poll do
    json.(@poll, :id, :active, :name, :pub_date, :description, :created_at, :updated_at)
    json.poll_questions @poll.poll_questions do |pq|
        json.id pq.id
        json.text pq.text
        json.question_type pq.question_type
        json.answers pq.answers
    end
end
json.url poll_url(poll, format: :json)
