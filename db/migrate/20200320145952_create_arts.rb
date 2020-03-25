class CreateArts < ActiveRecord::Migration[5.2]
  def change
    create_table :arts do |t|
      t.string :price_per_week
      t.string :name
      t.string :artist
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
