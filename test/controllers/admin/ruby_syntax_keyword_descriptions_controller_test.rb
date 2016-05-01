require 'test_helper'

class Admin::RubySyntaxKeywordDescriptionsControllerTest < ActionController::TestCase
  setup do
    @admin_ruby_syntax_keyword_description = admin_ruby_syntax_keyword_descriptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_ruby_syntax_keyword_descriptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_ruby_syntax_keyword_description" do
    assert_difference('Admin::RubySyntaxKeywordDescription.count') do
      post :create, admin_ruby_syntax_keyword_description: { full_keyword_description: @admin_ruby_syntax_keyword_description.full_keyword_description, keyword_code: @admin_ruby_syntax_keyword_description.keyword_code, label_code: @admin_ruby_syntax_keyword_description.label_code, label_description: @admin_ruby_syntax_keyword_description.label_description, label_result: @admin_ruby_syntax_keyword_description.label_result, num_view: @admin_ruby_syntax_keyword_description.num_view, result_code: @admin_ruby_syntax_keyword_description.result_code, ruby_syntax_name_keyword_id: @admin_ruby_syntax_keyword_description.ruby_syntax_name_keyword_id }
    end

    assert_redirected_to admin_ruby_syntax_keyword_description_path(assigns(:admin_ruby_syntax_keyword_description))
  end

  test "should show admin_ruby_syntax_keyword_description" do
    get :show, id: @admin_ruby_syntax_keyword_description
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_ruby_syntax_keyword_description
    assert_response :success
  end

  test "should update admin_ruby_syntax_keyword_description" do
    patch :update, id: @admin_ruby_syntax_keyword_description, admin_ruby_syntax_keyword_description: { full_keyword_description: @admin_ruby_syntax_keyword_description.full_keyword_description, keyword_code: @admin_ruby_syntax_keyword_description.keyword_code, label_code: @admin_ruby_syntax_keyword_description.label_code, label_description: @admin_ruby_syntax_keyword_description.label_description, label_result: @admin_ruby_syntax_keyword_description.label_result, num_view: @admin_ruby_syntax_keyword_description.num_view, result_code: @admin_ruby_syntax_keyword_description.result_code, ruby_syntax_name_keyword_id: @admin_ruby_syntax_keyword_description.ruby_syntax_name_keyword_id }
    assert_redirected_to admin_ruby_syntax_keyword_description_path(assigns(:admin_ruby_syntax_keyword_description))
  end

  test "should destroy admin_ruby_syntax_keyword_description" do
    assert_difference('Admin::RubySyntaxKeywordDescription.count', -1) do
      delete :destroy, id: @admin_ruby_syntax_keyword_description
    end

    assert_redirected_to admin_ruby_syntax_keyword_descriptions_path
  end
end
