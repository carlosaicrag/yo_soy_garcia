class AddBooleanSpouseTable < ActiveRecord::Migration[6.0]
  def change
    add_column :spouses, :current_spouse, :boolean, default: false
  end
end
