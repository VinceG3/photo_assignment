# == Schema Information
#
# Table name: albums
#
#  id                :integer          not null, primary key
#  title             :string
#  retrieved_id      :integer
#  retrieved_user_id :integer
#  user_id           :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

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

  def as_json(options = {})
    super.merge({thumbnail_url: thumbnail_url, user_name: user_name})
  end

  def user_name
    user.user_name
  end
end
