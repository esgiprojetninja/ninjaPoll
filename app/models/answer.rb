class Answer < ApplicationRecord
  belongs_to :poll_question
  belongs_to :poll
  validates(
    :poll_question,
    presence: true
  )
  validates(
    :poll,
    presence: true
  )
end
