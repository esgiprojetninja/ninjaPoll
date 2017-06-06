class RemovePollIdFromPollQuestion < ActiveRecord::Migration[5.0]
    def change
        change_table :poll_questions do |t|
            t.remove :poll_id
        end
    end
end
