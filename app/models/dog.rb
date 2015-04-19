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
  belongs_to :owner, :class_name => 'User', :foreign_key => 'user_id'

  validates :name, :user_id, :male, presence: true
end
