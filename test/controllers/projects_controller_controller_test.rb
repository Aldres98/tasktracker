require 'test_helper'

class ProjectsControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get projects_controller_index_url
    assert_response :success
  end

  test "should get update" do
    get projects_controller_update_url
    assert_response :success
  end

  test "should get delete" do
    get projects_controller_delete_url
    assert_response :success
  end

end
