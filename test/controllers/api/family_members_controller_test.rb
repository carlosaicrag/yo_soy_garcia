require 'test_helper'

class Api::FamilyMembersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get api_family_members_show_url
    assert_response :success
  end

end
