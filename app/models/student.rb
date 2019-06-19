class Student < ActiveRecord::Base
    belongs_to :mod
    has_many :study_buddies  

end 