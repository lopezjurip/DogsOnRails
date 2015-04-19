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

require 'test_helper'

class DogTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
