class CreateHighSchools < ActiveRecord::Migration
  def change
    create_table :high_schools do |t|
      t.string :school_name
      t.string :school_address 
      t.string :phone_number
      t.string :website
      
      t.timestamps 
    end
  end
end
