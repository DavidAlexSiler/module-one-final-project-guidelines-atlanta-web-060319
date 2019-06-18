class Student < ActiveRecord::Base
    belongs_to :module
    has_many :studybuddies  

end 