class CreateSpouses < ActiveRecord::Migration[6.0]
  def change
    create_table :spouses do |t|
      t.integer :partner_1, null:false
      t.integer :partner_2, null:false
      t.timestamps
    end
  end
end
