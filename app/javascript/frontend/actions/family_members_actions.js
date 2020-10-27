import { FETCH_FAMILY_MEMBER, 
         FETCH_FAMILY_TREES } from "../action-types/family_members_action_types";
import * as FamilyMemberUtil from "../utils/family_members_util"
//action creators
const receiveTree = (payload) => {
  return {
    type: FETCH_FAMILY_MEMBER,
    payload,
  };
}

const receiveTrees = (payload) => {
  return{
    type: FETCH_FAMILY_TREES,
    payload
  }
}

//thunk action creatorS
export const fetchFamilyTree = (familyMemberId) => {
  return async (dispatch) => {
    return FamilyMemberUtil.fetchFamilyTree(familyMemberId).then( (payload) => {
      dispatch(receiveTree(payload))
      return payload
    })
  }
}

export const fetchFamilyTrees = () => {
  return (dispatch) => {
    return FamilyMemberUtil.fetchAllFamilyTrees().then((payload) => {
      dispatch(receiveTrees(payload))
      return payload
    })
  }
}