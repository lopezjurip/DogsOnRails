# == Schema Information
#
# Table name: veterinaries
#
#  id          :integer          not null, primary key
#  name        :string
#  address     :string
#  phone       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  likes_count :integer          default(0)
#

require 'test_helper'

class VeterinaryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
