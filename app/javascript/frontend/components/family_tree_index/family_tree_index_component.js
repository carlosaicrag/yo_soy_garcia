import React from "react"
import FamilyTreesIndexItem from "./family_tree_index_item"

class FamilyTreesIndex extends React.Component {
  constructor(props){
    super(props)
    this.state = {fetching: true}
  }

  componentDidMount(){
    this.props.fetchFamilyTrees()
    .then(() => {
      this.setState({fetching:false})
    })
  }

  render(){
    if (this.state.fetching){
      return <div>fetching</div>
    }
    const indexItems = this.props.familyMembers.map((familyMember) => {
      return(
        <FamilyTreesIndexItem key={familyMember.id} familyMember={familyMember}></FamilyTreesIndexItem>
      )
    })
    return (
      <div className="family-tree-index-container">
        <div className="upcoming-events-container">
          <h1>Upcoming Events</h1>
        </div>
        <div className="family-tree-index-title-items-container">
          <h1>Family Trees</h1>
          <div className="family-member-index-items-container">
            {indexItems}
          </div>
        </div>
        <div className="upcoming-birthdays-container">
          <h1>Upcoming Birthdays</h1>
        </div>
      </div>
    )
  }
}

export default FamilyTreesIndex