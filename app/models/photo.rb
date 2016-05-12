# == Schema Information
#
# Table name: photos
#
#  id                 :integer          not null, primary key
#  title              :string
#  retrieved_id       :integer
#  album_id           :integer
#  retrieved_album_id :integer
#  thumbnail_url      :string
#  url                :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Photo < ActiveRecord::Base
  belongs_to :album
  
  def self.add_relations!
    all.each do |photo|
      photo.update(album_id: Album.find_by(retrieved_id: photo.retrieved_album_id).id)
    end
  end
end
