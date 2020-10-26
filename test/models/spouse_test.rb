# == Schema Information
#
# Table name: spouses
#
#  id           :bigint           not null, primary key
#  partner_1_id :integer          not null
#  partner_2_id :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require 'test_helper'

class SpouseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
