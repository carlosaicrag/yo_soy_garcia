import {connect} from "react-redux"
import { fetchFamilyTree } from "../../actions/family_members_actions"
import FamilyTreeShow from "./family_tree_show_component"

const msp = (state,ownProps) => {
  return {
    familyMember: state.entities.familyMembers[ownProps.match.params.familyMemberId]
  }
}

const mdp = (dispatch) => {

  return {
    fetchFamilyTree: (familyMemberId) => {
      return dispatch(fetchFamilyTree(familyMemberId))
    }
  }
}

export default connect(msp,mdp)(FamilyTreeShow)