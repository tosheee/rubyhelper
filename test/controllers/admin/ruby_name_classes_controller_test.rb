require 'test_helper'

class Admin::RubyNameClassesControllerTest < ActionController::TestCase
  setup do
    @admin_ruby_name_class = admin_ruby_name_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_ruby_name_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_ruby_name_class" do
    assert_difference('Admin::RubyNameClass.count') do
      post :create, admin_ruby_name_class: { name_class: @admin_ruby_name_class.name_class, num_view: @admin_ruby_name_class.num_view }
    end

    assert_redirected_to admin_ruby_name_class_path(assigns(:admin_ruby_name_class))
  end

  test "should show admin_ruby_name_class" do
    get :show, id: @admin_ruby_name_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_ruby_name_class
    assert_response :success
  end

  test "should update admin_ruby_name_class" do
    patch :update, id: @admin_ruby_name_class, admin_ruby_name_class: { name_class: @admin_ruby_name_class.name_class, num_view: @admin_ruby_name_class.num_view }
    assert_redirected_to admin_ruby_name_class_path(assigns(:admin_ruby_name_class))
  end

  test "should destroy admin_ruby_name_class" do
    assert_difference('Admin::RubyNameClass.count', -1) do
      delete :destroy, id: @admin_ruby_name_class
    end

    assert_redirected_to admin_ruby_name_classes_path
  end
end
