class AddTypeToPollQuestions < ActiveRecord::Migration[5.0]
  def change
    add_column :poll_questions, :type, :integer
  end
end
