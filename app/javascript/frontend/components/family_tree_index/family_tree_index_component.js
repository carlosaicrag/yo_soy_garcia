import React from "react"

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

    return (
      <div>banana</div>
    )
  }
}

export default FamilyTreesIndex