class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :arts, :type, :paint_type
  end
end
