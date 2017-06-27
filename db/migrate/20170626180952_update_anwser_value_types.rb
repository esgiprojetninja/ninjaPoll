class UpdateAnwserValueTypes < ActiveRecord::Migration[5.0]
    def change
        add_column :answers, :text_value, :longtext
        rename_column :answers, :value, :int_value
    end
end
