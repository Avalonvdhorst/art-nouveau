class AddShortDescriptionToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :short_description, :string
  end
end
