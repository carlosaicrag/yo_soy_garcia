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
class Spouse < ApplicationRecord
  belongs_to :partner_1,
    foreign_key: :partner_1_id,
    class_name: :FamilyMember

  belongs_to :partner_2,
    foreign_key: :partner_2_id,
    class_name: :FamilyMember
end
