import React from "react"

export default FamilyTreesIndexItem = ({familyMember}) => {
  return (
    <div className="family-member-index-item-container">
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
    </div>
  )
}
