require 'test_helper'

class Admin::RubySyntaxNameElementsControllerTest < ActionController::TestCase
  setup do
    @admin_ruby_syntax_name_element = admin_ruby_syntax_name_elements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_ruby_syntax_name_elements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_ruby_syntax_name_element" do
    assert_difference('Admin::RubySyntaxNameElement.count') do
      post :create, admin_ruby_syntax_name_element: { name_element: @admin_ruby_syntax_name_element.name_element, num_view: @admin_ruby_syntax_name_element.num_view }
    end

    assert_redirected_to admin_ruby_syntax_name_element_path(assigns(:admin_ruby_syntax_name_element))
  end

  test "should show admin_ruby_syntax_name_element" do
    get :show, id: @admin_ruby_syntax_name_element
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_ruby_syntax_name_element
    assert_response :success
  end

  test "should update admin_ruby_syntax_name_element" do
    patch :update, id: @admin_ruby_syntax_name_element, admin_ruby_syntax_name_element: { name_element: @admin_ruby_syntax_name_element.name_element, num_view: @admin_ruby_syntax_name_element.num_view }
    assert_redirected_to admin_ruby_syntax_name_element_path(assigns(:admin_ruby_syntax_name_element))
  end

  test "should destroy admin_ruby_syntax_name_element" do
    assert_difference('Admin::RubySyntaxNameElement.count', -1) do
      delete :destroy, id: @admin_ruby_syntax_name_element
    end

    assert_redirected_to admin_ruby_syntax_name_elements_path
  end
end
