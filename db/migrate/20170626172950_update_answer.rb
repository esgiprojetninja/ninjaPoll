class UpdateAnswer < ActiveRecord::Migration[5.0]
    def change
        change_table :answers do |t|
            t.belongs_to :poll
        end
    end
end
