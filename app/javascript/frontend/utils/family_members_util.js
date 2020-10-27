export const fetchAllFamilyTrees = () => {
  try{
      return fetch("http://localhost:3000/api/family_members/find_all_family_trees")
      .then((response) => {
        return response.json()
      })
    } 
    catch (error) {
      // debugger
    }
}

export const fetchFamilyTree = (familyMemberId) => {
  try{
      return fetch(`http://localhost:3000/api/family_members/${familyMemberId}`).then((response) => {
        return response.json()
      })
    } 
    catch (error) {
      // debugger
    }
}