require 'test_helper'

class Auth::EmailsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get auth_emails_show_url
    assert_response :success
  end

  test "should get create" do
    get auth_emails_create_url
    assert_response :success
  end

  test "should get callback" do
    get auth_emails_callback_url
    assert_response :success
  end

end
