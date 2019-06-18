class CreateStudyBuddy < ActiveRecord::Base
    belongs_to :student
    belongs_to :module
end