# == Schema Information
#
# Table name: veterinaries
#
#  id         :integer          not null, primary key
#  name       :string
#  address    :string
#  phone      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Veterinary < ActiveRecord::Base
  include Likeable

  validates :name, presence: true

  has_many :veterinary_attendances
  has_many :dogs, through: :veterinary_attendances
end
