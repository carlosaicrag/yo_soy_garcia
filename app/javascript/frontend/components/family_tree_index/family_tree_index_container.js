import {connect} from "react-redux"
import { fetchFamilyTrees } from "../../actions/family_members_actions"
import FamilyTreeIndex from "./family_tree_index_component"
import {selectFamilyMembers} from "../../selectors/family_tree_index_selector"

const msp = (state) => {
  return {
    familyMembers: selectFamilyMembers(state)
  }
}

const mdp = (dispatch) => {
  return {
    fetchFamilyTrees: () => {
      return dispatch(fetchFamilyTrees())
    }
  }
}

export default connect(msp,mdp)(FamilyTreeIndex)