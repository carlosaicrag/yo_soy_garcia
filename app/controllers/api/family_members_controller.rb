class Api::FamilyMembersController < ApplicationController

  def find_all_family_trees 
    @family_trees = FamilyMember.find_members_with_children # getting all family members with children
    render :show_all_family_trees
  end

  def show # this shows a family tree for a specefic member of family
    @root = FamilyMember.where
    render :show
  end
end
