class Student < ActiveRecord::Base
    belongs_to :module
    has_many :studybuddies  

    def self.id_card
        "Name: #{self.name}
         ID: #{self.id}"
    end

end 