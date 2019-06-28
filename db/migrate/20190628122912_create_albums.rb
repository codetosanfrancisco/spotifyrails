class CreateAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table :albums do |t|
      t.string :name
      t.text :description
      t.string :group_name
      t.integer :year_published

      t.timestamps
    end
  end
end
