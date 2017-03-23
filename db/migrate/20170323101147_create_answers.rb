class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.integer :value
      t.references :poll_question, foreign_key: true

      t.timestamps
    end
  end
end
