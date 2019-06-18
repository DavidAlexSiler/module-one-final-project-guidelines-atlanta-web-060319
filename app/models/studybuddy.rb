class StudyBuddy < ActiveRecord::Base
    belongs_to :student
    belongs_to :module
    has_many :notes

    def self.notes_by_subject(subj)
        StudyBuddy.all.find do |note|
            note.subject = subj
        end
    end

end