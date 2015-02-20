require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
      assert_select "title", "Guild App"
  end

  test "should get about_us" do
    get :about_us
    assert_response :success
    assert_select "title", "About Us | Guild App"
  end
test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "Contact | Guild App"
  end

end
