# == Schema Information
#
# Table name: family_members
#
#  id         :bigint           not null, primary key
#  fname      :string           not null
#  lname      :string           not null
#  sex        :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  nickname   :string
#
require 'test_helper'

class FamilyMemberTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
