# == Schema Information
#
# Table name: breeds
#
#  id          :integer          not null, primary key
#  breed       :string           not null
#  description :text             default("")
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Breed < ActiveRecord::Base
  include Likeable

  validates :breed, presence: true, uniqueness: true

  has_and_belongs_to_many :dogs
end
