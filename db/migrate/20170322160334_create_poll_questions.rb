class CreatePollQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :poll_questions do |t|
      t.text :text

      t.timestamps
    end
  end
end
