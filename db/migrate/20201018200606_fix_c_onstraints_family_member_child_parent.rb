class FixCOnstraintsFamilyMemberChildParent < ActiveRecord::Migration[6.0]
  def change
    remove_column :family_member_child_parents, :parent_id
    remove_column :family_member_child_parents, :child_id

    add_column :family_member_child_parents, :parent_id, :integer, null:false
    add_column :family_member_child_parents, :child_id, :integer, null:false
  end
end
