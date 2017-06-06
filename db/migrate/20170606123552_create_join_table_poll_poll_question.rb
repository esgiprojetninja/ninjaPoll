class CreateJoinTablePollPollQuestion < ActiveRecord::Migration[5.0]
  def change
    create_join_table :polls, :poll_questions do |t|
      t.index [:poll_id, :poll_question_id]
    end
  end
end
