import React from "react"
import Tree from 'react-d3-tree';

export default class FamilyTreeShowComponent extends React.Component {
  constructor(props){
    super(props)
    this.state = {fetching:true}
  }

  componentDidMount(){
    this.props.fetchFamilyTree(this.props.match.params.familyMemberId).then(() => {
      this.setState({fetching:false})
    })
  }

  render(){
    if (this.state.fetching){
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
