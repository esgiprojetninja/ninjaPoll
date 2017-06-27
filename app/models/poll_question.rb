class PollQuestion < ApplicationRecord
    has_and_belongs_to_many :polls
    has_many :answers, dependent: :destroy
    enum question_type: [:text, :int, :range]
    validates(
        :question_type,
        presence: true
    )
    validates(
        :polls,
        presence: true
    )
end
