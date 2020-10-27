export const fetchAllFamilyTrees = () => {
  try{
      return fetch("https://be-familiar.herokuapp.com/api/family_members/find_all_family_trees")
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
      return fetch(`https://be-familiar.herokuapp.com/api/family_members/${familyMemberId}`).then((response) => {
        return response.json()
      })
    } 
    catch (error) {
      // debugger
    }
}