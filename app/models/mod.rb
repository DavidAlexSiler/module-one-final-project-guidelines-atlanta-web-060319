class Mod < ActiveRecord::Base
    has_many :study_buddies
    has_many :students

    def answer(mod_id)
        ans = Answer.all.select do |a|
            a.mod_id == mod_id
        end
        ans
    end
end

