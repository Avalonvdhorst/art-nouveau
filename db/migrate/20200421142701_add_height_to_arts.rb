class AddHeightToArts < ActiveRecord::Migration[5.2]
  def change
    add_column :arts, :height, :float
  end
end
