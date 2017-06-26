class UpdatePollQuestions < ActiveRecord::Migration[5.0]
    def change
        add_column :poll_questions, :question_type, :integer
    end
end
