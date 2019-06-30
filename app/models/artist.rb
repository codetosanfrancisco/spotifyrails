class Artist < ApplicationRecord
  belongs_to :company
  has_many :albums, :through => :album_artist
end
