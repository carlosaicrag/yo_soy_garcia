import React from 'react';
import FamilyTreeShowContainer from "./family_tree_show/family_tree_show_container"
import FamilyTreeIndexContainer from "./family_tree_index/family_tree_index_container"
import { Route,Switch } from 'react-router-dom'

function App() {
  return (
    <Switch>
      <Route path="/familyTrees" component={FamilyTreeIndexContainer}></Route>
      {/* <Route path="/familyTrees/:familyMemberId" component={FamilyTreeShowContainer}></Route> */}
    </Switch>
  );
}

export default App;
