require 'test_helper'

class SyntaxElementsRubiesControllerTest < ActionController::TestCase
  setup do
    @syntax_elements_ruby = syntax_elements_rubies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:syntax_elements_rubies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create syntax_elements_ruby" do
    assert_difference('SyntaxElementsRuby.count') do
      post :create, syntax_elements_ruby: { element: @syntax_elements_ruby.element }
    end

    assert_redirected_to syntax_elements_ruby_path(assigns(:syntax_elements_ruby))
  end

  test "should show syntax_elements_ruby" do
    get :show, id: @syntax_elements_ruby
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @syntax_elements_ruby
    assert_response :success
  end

  test "should update syntax_elements_ruby" do
    patch :update, id: @syntax_elements_ruby, syntax_elements_ruby: { element: @syntax_elements_ruby.element }
    assert_redirected_to syntax_elements_ruby_path(assigns(:syntax_elements_ruby))
  end

  test "should destroy syntax_elements_ruby" do
    assert_difference('SyntaxElementsRuby.count', -1) do
      delete :destroy, id: @syntax_elements_ruby
    end

    assert_redirected_to syntax_elements_rubies_path
  end
end
