class CreateMods < ActiveRecord::Migration[5.0]
    def change
        create_table :mods do |t|
            t.string :name
        end
    end
end
