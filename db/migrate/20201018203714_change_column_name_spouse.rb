class ChangeColumnNameSpouse < ActiveRecord::Migration[6.0]
  def change
      rename_column :spouses, :partner_1, :partner_1_id
    rename_column :spouses, :partner_2, :partner_2_id
  end
end
