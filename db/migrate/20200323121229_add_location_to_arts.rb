class AddLocationToArts < ActiveRecord::Migration[5.2]
  def change
    add_column :arts, :location, :string
  end
end
