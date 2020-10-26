json.familyMembers do 
  @family_trees.each do |family_member|
    json.set! family_member.id do 
      json.id family_member.id
      json.fname family_member.fname
      json.lname family_member.lname
    end
  end
end