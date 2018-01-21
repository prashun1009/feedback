require 'test_helper'

class FeedbackControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get feedback_form_new_url
    assert_response :success
  end

  test "should get create" do
    get feedback_form_create_url
    assert_response :success
  end

end
