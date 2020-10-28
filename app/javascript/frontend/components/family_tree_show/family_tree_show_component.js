import React from "react"
import Tree from 'react-d3-tree';

export default class FamilyTreeShowComponent extends React.Component {
  constructor(props){
    super(props)
    this.state = {fetching:true, translate: {x: 250,
          y: 200}, centering: true}
  }

  componentDidMount(){
    this.props.fetchFamilyTree(this.props.match.params.familyMemberId).then(() => {
      this.setState({fetching:false})
    })
  }

  createTree() {
    dimensions = this.treeContainer.getBoundingClientRect();
    this.setState({
        translate: {
          x: 250,
          y: 250
        },
        centering: false
      });
  }

  render(){
    if (this.state.fetching){
      return <div ref={tc => (this.treeContainer = "banana")}></div>
    }
    
    return(
      <div className="profile-container">
        <div className="tree-wrapper" ref={tc => (this.treeContainer = tc)}>
          <Tree className="treeWrapper" 
          data={this.props.familyMember.family_tree} 
          orientation="vertical"
          translate={this.state.translate}
          ></Tree>
        </div>
      </div>
    )
  }
}
