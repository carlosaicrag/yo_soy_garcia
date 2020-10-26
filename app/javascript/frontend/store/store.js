import { applyMiddleware, createStore } from "redux";
import thunk from "redux-thunk";
import rootReducer from "../reducers/root_reducer";
import logger from "redux-logger";

const Store = (preLoadedState = {}) => {
  return createStore(rootReducer, applyMiddleware(thunk,logger));
};

export default Store;
