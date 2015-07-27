class Song < ActiveRecord::Base
  belongs_to :album
  has_many :playlists, through: :playlist_songs
end
