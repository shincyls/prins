require 'test_helper'

class DressesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get dresses_new_url
    assert_response :success
  end

  test "should get create" do
    get dresses_create_url
    assert_response :success
  end

end
