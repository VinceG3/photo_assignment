class Album < ActiveRecord::Base
  has_many :photos
  belongs_to :user

  def self.add_relations!
    all.each do |album|
      album.update(user_id: User.find_by(retrieved_id: album.retrieved_user_id).id)
    end
  end

  def thumbnail_url
    photos.first.thumbnail_url
  end
end
