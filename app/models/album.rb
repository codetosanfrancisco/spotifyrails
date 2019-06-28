class Album < ApplicationRecord
  has_many :artists, :through => album_artist
end
