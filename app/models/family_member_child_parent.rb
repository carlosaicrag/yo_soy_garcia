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
class FamilyMemberChildParent < ApplicationRecord
  belongs_to :parent,
  foreign_key: :parent_id,
  class_name: :FamilyMember

  belongs_to :child,
  foreign_key: :child_id,
  class_name: :FamilyMember
end
