require 'test_helper'

class ContactsGroupsControllerTest < ActionController::TestCase
  setup do
    @contacts_group = contacts_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contacts_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contacts_group" do
    assert_difference('ContactsGroup.count') do
      post :create, contacts_group: {  }
    end

    assert_redirected_to contacts_group_path(assigns(:contacts_group))
  end

  test "should show contacts_group" do
    get :show, id: @contacts_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contacts_group
    assert_response :success
  end

  test "should update contacts_group" do
    put :update, id: @contacts_group, contacts_group: {  }
    assert_redirected_to contacts_group_path(assigns(:contacts_group))
  end

  test "should destroy contacts_group" do
    assert_difference('ContactsGroup.count', -1) do
      delete :destroy, id: @contacts_group
    end

    assert_redirected_to contacts_groups_path
  end
end
