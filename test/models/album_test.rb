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

require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
