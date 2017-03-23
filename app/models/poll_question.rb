class PollQuestion < ApplicationRecord
    belongs_to :poll
    has_many :answers, dependent: :destroy
end
