class CreateFamilyMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :family_members do |t|
      t.string :fname, null:false
      t.string :lname, null:false
      t.string :sex, null:false
      
      t.timestamps
    end
  end
end
