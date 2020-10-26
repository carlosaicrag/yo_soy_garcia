import React from "react"
import Tree from 'react-d3-tree';

export default class MainComponent extends React.Component {
  constructor(props){
    super(props)
    this.state = {fetching:true}
  }

  componentDidMount(){
    this.props.fetchFamilyTree()
  }

  render(){
    if (!this.props.familyMember){
      return <div></div>
    }

    debugger
    return(
      <div id="treeWrapper" style={{width: '50em', height: '50em'}}>
        <Tree data={this.props.familyMember.family_tree} orientation="vertical"></Tree>
      </div>
    )
  }
}
