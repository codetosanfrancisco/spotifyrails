class AddFileToSongs < ActiveRecord::Migration[6.0]
  def change
    add_column :songs, :file, :string
  end
end
