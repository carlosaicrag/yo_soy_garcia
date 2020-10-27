import React from "react"
import {Link} from "react-router-dom"

const FamilyTreesIndexItem = ({familyMember}) => {
  return (
    <Link to={`/familyTrees/${familyMember.id}`} className="family-member-index-item-container">
      <div className="family-member-index-item-picture"> {/*this is a picture of root familyMember*/}

      </div>

      <div className="family-member-index-item-name-container">{/*this a the namee of family member*/}
        <div className="family-member-index-item-name">
          {familyMember.fname}
        </div>
        <div className="family-member-index-item-name">
          {familyMember.lname}
        </div>
      </div>
    </Link>
  )
}

export default FamilyTreesIndexItem