class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :comments, :type, :comment_type
  end
end
