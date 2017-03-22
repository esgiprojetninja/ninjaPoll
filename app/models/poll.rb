class Poll < ApplicationRecord
    has_many :poll_questions, dependent: :destroy
end
