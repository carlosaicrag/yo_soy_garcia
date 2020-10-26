import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from "../frontend/store/store"
import Root from '../frontend/components/root';
import {fetchFamilyTrees} from "../frontend/actions/family_members_actions"

document.addEventListener('DOMContentLoaded', () => {
  const root = document.getElementById('root');
  let preloadedState = undefined;

  const store = configureStore(preloadedState)
  window.store = store
  window.fetchFamilyTrees = fetchFamilyTrees
  store.dispatch(window.fetchFamilyTrees())
  ReactDOM.render(<Root store={store}></Root>, root);
});
