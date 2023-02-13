require "test_helper"

class ContactControllerTest < ActionDispatch::IntegrationTest
  test "should get contact_section" do
    get contact_contact_section_url
    assert_response :success
  end
end
