# == Schema Information
#
# Table name: veterinary_attendances
#
#  id            :integer          not null, primary key
#  dog_id        :integer
#  veterinary_id :integer
#  healthy       :boolean          default(TRUE)
#  notes         :text             default("")
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class VeterinaryAttendance < ActiveRecord::Base
  validates :dog_id, :veterinary_id, presence: true

  belongs_to :dog
  belongs_to :veterinary
end
