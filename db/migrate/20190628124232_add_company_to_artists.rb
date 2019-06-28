class AddCompanyToArtists < ActiveRecord::Migration[6.0]
  def change
    add_reference :artists, :company, null: false, foreign_key: true
  end
end
