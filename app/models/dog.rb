# == Schema Information
#
# Table name: dogs
#
#  id          :integer          not null, primary key
#  name        :string           not null
#  male        :boolean          default(TRUE), not null
#  user_id     :integer
#  born_at     :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  likes_count :integer          default(0)
#

class Dog < ActiveRecord::Base
  include Likeable

  validates :name, :user_id, :male, presence: true

  belongs_to :veterinary
  belongs_to :owner, :class_name => 'User', :foreign_key => 'user_id'
  has_and_belongs_to_many :breeds
  has_many :veterinary_attendances
  has_many :veterinaries, through: :veterinary_attendances
end
