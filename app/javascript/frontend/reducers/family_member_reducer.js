import { FETCH_FAMILY_MEMBER, 
         FETCH_FAMILY_TREES } from "../action-types/family_members_action_types";

const familyMemberReducer = (oldState= {}, action) => {
  switch (action.type) {
    case FETCH_FAMILY_MEMBER:
      return action.payload.familyMembers
    case FETCH_FAMILY_TREES:
      return action.payload.familyMembers
    default:
      return oldState
  }
}

export default familyMemberReducer