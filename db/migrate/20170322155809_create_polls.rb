class CreatePolls < ActiveRecord::Migration[5.0]
  def change
    create_table :polls do |t|
      t.boolean :active, :default => true
      t.string :name
      t.datetime :pub_date
      t.text :description

      t.timestamps
    end
  end
end
