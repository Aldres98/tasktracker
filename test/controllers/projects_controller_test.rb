require 'test_helper'

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get projects_index_url
    assert_response :success
  end

  test "should get update" do
    get projects_update_url
    assert_response :success
  end

  test "should get delete" do
    get projects_delete_url
    assert_response :success
  end

end
