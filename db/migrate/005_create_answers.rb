class CreateAnswers < ActiveRecord::Migration[5.0]
    def change
        create_table :answers do |t|
            t.string :answer
            t.integer :mod_id
        end
    end
end