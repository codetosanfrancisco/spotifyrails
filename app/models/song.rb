class Song < ApplicationRecord
  belongs_to :album
  mount_uploader :file, SongUploader
end
