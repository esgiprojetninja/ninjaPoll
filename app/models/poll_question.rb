class PollQuestion < ApplicationRecord
    has_and_belongs_to_many :polls
    has_many :answers, dependent: :destroy
end
