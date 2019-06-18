class CreateStudyBuddies < ActiveRecord::Migration[5.0]
    def change
        create_table :study_buddies do |t|
            t.string :name
            t.integer :mod_id
            t.integer :student_id
            t.integer :quiz_score
        end
    end
end
