class Mod < ActiveRecord::Base
    has_many :study_buddies
    has_many :students
end

