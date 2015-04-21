# == Schema Information
#
# Table name: likes
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  likeable_id   :integer
#  likeable_type :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Like < ActiveRecord::Base
  validates :user_id, :likeable_id, :likeable_type, presence: true

  belongs_to :user
  belongs_to :likeable, polymorphic: true
end
