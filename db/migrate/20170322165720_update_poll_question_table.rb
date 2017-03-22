class UpdatePollQuestionTable < ActiveRecord::Migration[5.0]
  def change
      change_table :poll_questions do |t|
          t.belongs_to :poll, index: true
      end
  end
end
