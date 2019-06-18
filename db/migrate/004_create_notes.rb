class CreateNotes < ActiveRecord::Migration[5.0]
    def change
        create_table :notes do |t|
            t.string :subject
            t.string :date
            t.text :content
            t.integer :study_buddy_id
        end
    end
end