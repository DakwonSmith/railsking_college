require 'test_helper'

class StudentControllerTest < ActionDispatch::IntegrationTest
  test "should get log_in" do
    get student_log_in_url
    assert_response :success
  end

  test "should get sign_up" do
    get student_sign_up_url
    assert_response :success
  end

  test "should get index" do
    get student_index_url
    assert_response :success
  end

  test "should get grades" do
    get student_grades_url
    assert_response :success
  end

  test "should get courses" do
    get student_courses_url
    assert_response :success
  end

  test "should get profile" do
    get student_profile_url
    assert_response :success
  end

end
