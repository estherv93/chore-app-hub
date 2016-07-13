require 'test_helper'

class ChoreListsControllerTest < ActionController::TestCase
  setup do
    @chore_list = chore_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chore_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chore_list" do
    assert_difference('ChoreList.count') do
      post :create, chore_list: { title: @chore_list.title }
    end

    assert_redirected_to chore_list_path(assigns(:chore_list))
  end

  test "should show chore_list" do
    get :show, id: @chore_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chore_list
    assert_response :success
  end

  test "should update chore_list" do
    patch :update, id: @chore_list, chore_list: { title: @chore_list.title }
    assert_redirected_to chore_list_path(assigns(:chore_list))
  end

  test "should destroy chore_list" do
    assert_difference('ChoreList.count', -1) do
      delete :destroy, id: @chore_list
    end

    assert_redirected_to chore_lists_path
  end
end
