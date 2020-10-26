# == Schema Information
#
# Table name: family_member_child_parents
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  parent_id  :integer          not null
#  child_id   :integer          not null
#
require 'test_helper'

class FamilyMemberChildParentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
