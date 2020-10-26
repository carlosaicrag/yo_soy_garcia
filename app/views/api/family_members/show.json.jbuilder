json.familyMembers do 
  json.set! @root.id do 
      json.family_tree do 
        tree = @root.create_family_tree({})
        json.name  tree["name"]
        json.children  tree["children"]
      end
  end
end