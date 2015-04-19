# == Schema Information
#
# Table name: dogs
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  male       :boolean          default(TRUE), not null
#  user_id    :integer
#  born_at    :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Dog < ActiveRecord::Base
  validates :name, :user_id, :male, presence: true

  belongs_to :owner, :class_name => 'User', :foreign_key => 'user_id'
  has_and_belongs_to_many :breeds
end
