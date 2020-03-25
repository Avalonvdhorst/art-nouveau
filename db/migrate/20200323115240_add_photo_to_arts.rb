class AddPhotoToArts < ActiveRecord::Migration[5.2]
  def change
    add_column :arts, :photo, :string
  end
end
