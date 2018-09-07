class AddDefaultToDevise < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :is_admin, :boolean, default: false
  end
end
