class StudyBuddy < ActiveRecord::Base
    belongs_to :student
    belongs_to :module
    has_many :notes


end