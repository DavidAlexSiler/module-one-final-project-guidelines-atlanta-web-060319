class CreateModules < ActiveRecord::Migration[5.0]
    def change
        create_table :modules do |t|
            t.string :name
        end
    end
end

