class AddNicknameToFamilyMember < ActiveRecord::Migration[6.0]
  def change
    add_column :family_members, :nickname, :string
  end
end
