class Mod < ActiveRecord::Base
    has_many :studybuddies
    has_many :students
end

