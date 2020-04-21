class AddWidthToArts < ActiveRecord::Migration[5.2]
  def change
    add_column :arts, :width, :float
  end
end
