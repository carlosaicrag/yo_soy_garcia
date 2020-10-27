import React from 'react';
import FamilyTreeShowContainer from "./family_tree_show/family_tree_show_container"
import FamilyTreeIndexContainer from "./family_tree_index/family_tree_index_container"
import { Route,Switch } from 'react-router-dom'
import Footer from "./footer/footer"

function App() {
  return (
    <div className="app">
      <Switch>
        <Route path="/familyTrees/:familyMemberId" component={FamilyTreeShowContainer}></Route>
        <Route path="/familyTrees" component={FamilyTreeIndexContainer}></Route>
      </Switch>
      <Footer></Footer>
    </div>
  );
}

export default App;
