class Album < ApplicationRecord
  belongs_to :company
  has_many :artists, :through => :album_artist
  mount_uploader :image, ImageUploader
end
