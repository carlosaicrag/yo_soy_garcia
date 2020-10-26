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
class FamilyMember < ApplicationRecord
  has_one :family_member_parent,
  foreign_key: :child_id,
  class_name: :FamilyMemberChildParent

  has_many :family_member_children,
  foreign_key: :parent_id,
  class_name: :FamilyMemberChildParent

  has_many :children,
  through: :family_member_children,
  source: :child

  has_one :parent,
  through: :family_member_parent,
  source: :parent

  has_many :spouses,
  foreign_key: :partner_1_id,
  class_name: :Spouse

  has_many :partners,
  through: :spouses,
  source: :partner_2

  def create_family_tree(tree)
    tree["name"] =self.fname
    
    if self.children.length > 0 
      tree["children"] = []
    end

    self.children.each do |child|
      new_tree = {}
      tree["children"].push(child.create_family_tree(new_tree))
    end

    return tree
  end

  def self.find_members_with_children
    family_members = FamilyMember.all.includes(:children)

    family_members.select do |family_member|
      if family_member.children.length > 0
        family_member
      end
    end
  end

end
