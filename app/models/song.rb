class Song < ActiveRecord::Base
  
  belongs_to :artist
  belongs_to :genre
  has_many :notes

  def genre_name= name
    #since the song has no genre, we have to create it
    genre ? genre.name  : nil
  end
  
end

