require 'test_helper'

class Admin::RailsNameStructuresControllerTest < ActionController::TestCase
  setup do
    @admin_rails_name_structure = admin_rails_name_structures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_rails_name_structures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_rails_name_structure" do
    assert_difference('Admin::RailsNameStructure.count') do
      post :create, admin_rails_name_structure: { name_structure: @admin_rails_name_structure.name_structure, num_structure: @admin_rails_name_structure.num_structure }
    end

    assert_redirected_to admin_rails_name_structure_path(assigns(:admin_rails_name_structure))
  end

  test "should show admin_rails_name_structure" do
    get :show, id: @admin_rails_name_structure
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_rails_name_structure
    assert_response :success
  end

  test "should update admin_rails_name_structure" do
    patch :update, id: @admin_rails_name_structure, admin_rails_name_structure: { name_structure: @admin_rails_name_structure.name_structure, num_structure: @admin_rails_name_structure.num_structure }
    assert_redirected_to admin_rails_name_structure_path(assigns(:admin_rails_name_structure))
  end

  test "should destroy admin_rails_name_structure" do
    assert_difference('Admin::RailsNameStructure.count', -1) do
      delete :destroy, id: @admin_rails_name_structure
    end

    assert_redirected_to admin_rails_name_structures_path
  end
end
