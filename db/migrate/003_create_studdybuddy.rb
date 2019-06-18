class CreateStudybuddys < ActiveRecord.Migration[5.2]
    def change
        create_table :studybuddys do |t|
            t.string :name
            t.integer :module_id
            t.integer :student_id
            t.integer :quiz_score
        end
    end
end
