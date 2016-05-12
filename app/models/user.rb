# == Schema Information
#
# Table name: users
#
#  id               :integer          not null, primary key
#  name             :string
#  user_name        :string
#  email            :string
#  address_street   :string
#  address_suite    :string
#  address_city     :string
#  address_zip_code :string
#  phone            :string
#  website          :string
#  password         :string
#  retrieved_id     :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class User < ActiveRecord::Base
  has_many :albums
end
