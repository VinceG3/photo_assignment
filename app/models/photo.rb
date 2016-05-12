class Photo < ActiveRecord::Base
  def self.add_relations!
    all.each do |photo|
      photo.update(album_id: Album.find_by(retrieved_id: photo.retrieved_album_id).id)
    end
  end
end
