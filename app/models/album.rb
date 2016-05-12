class Album < ActiveRecord::Base
  def self.add_relations!
    all.each do |album|
      album.update(user_id: User.find_by(retrieved_id: album.retrieved_user_id).id)
    end
  end
end
