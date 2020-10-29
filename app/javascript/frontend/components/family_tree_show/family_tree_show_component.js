import React from "react"
import Tree from 'react-d3-tree';

export default class FamilyTreeShowComponent extends React.Component {
  constructor(props){
    super(props)
    this.state = {fetching:true, translate: {}, centering: true}
  }

  componentDidMount(){
    this.props.fetchFamilyTree(this.props.match.params.familyMemberId).then(() => {
      let dimensions = this.treeContainer.getBoundingClientRect();
      this.setState({
        translate: {
          x: dimensions.width / 2,
          y: dimensions.height / 2 - 100
        },
        fetching: false
      });
    })
  }

  createTree() {
    if(this.state.fetching){
      return <div></div>
    }else{
      return (
          <Tree className="treeWrapper" 
              data={this.props.familyMember.family_tree} 
              orientation="vertical"
              translate={this.state.translate}
          ></Tree>
      )
    }
    
  }

  createDetailsPicture(){
    if(this.state.fetching){
      return <div></div>
    }else{
      return (
          <div className="details-picture-container">
            <div className="details-picture">

            </div>
          </div>
      )
    }
  }

  createDetailsInfo(){
    if(this.state.fetching){
      return <div></div>
    }else{
      return (
          <div className="details-info-container">
            <div>First Name: banana</div>
            <div>Last Name: banana</div>
            <div>Number of Children: 10000</div>
            <div>Parent1: banana</div>
            <div>Parent2: banana</div>
          </div>
      )
    }
  }

  render(){
    return(
      <div className="show-container">
        <div className="profile-container">
          <div className="profile-details-container">
            {this.createDetailsPicture()}
            {this.createDetailsInfo()}
          </div>
          <div className="tree-wrapper" ref={tc => (this.treeContainer = tc)}>
            {this.createTree()}
          </div>
        </div>
      </div>
    )
  }
}
