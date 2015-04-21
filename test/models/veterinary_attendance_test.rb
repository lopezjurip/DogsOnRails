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

require 'test_helper'

class VeterinaryAttendanceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
