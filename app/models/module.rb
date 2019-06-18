class CreateModule < ActiveRecord::Base
    has_many :studybuddys
    has_many :students
end