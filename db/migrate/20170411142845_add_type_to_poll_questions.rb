class AddTypeToPollQuestions < ActiveRecord::Migration[5.0]
  def change
    add_column :answers, :type, :integer
  end
end
