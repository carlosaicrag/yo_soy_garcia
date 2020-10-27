import {connect} from "react-redux"
import { fetchFamilyTree } from "../../actions/family_members_actions"
import FamilyTreeShow from "./family_tree_show_component"

const msp = (store,ownProps) => {
  return {
    familyMember: store.familyMembers[ownProps.match.params.familyMemberId]
  }
}

const mdp = (dispatch) => {

  return {
    fetchFamilyTree: () => {
      dispatch(fetchFamilyTree())
    }
  }
}

export default connect(msp,mdp)(FamilyTreeShow)