require 'test_helper'

class ContactUserAssocsControllerTest < ActionController::TestCase
  setup do
    @contact_user_assoc = contact_user_assocs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contact_user_assocs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contact_user_assoc" do
    assert_difference('ContactUserAssoc.count') do
      post :create, contact_user_assoc: { contact_id: @contact_user_assoc.contact_id, user_id: @contact_user_assoc.user_id }
    end

    assert_redirected_to contact_user_assoc_path(assigns(:contact_user_assoc))
  end

  test "should show contact_user_assoc" do
    get :show, id: @contact_user_assoc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contact_user_assoc
    assert_response :success
  end

  test "should update contact_user_assoc" do
    put :update, id: @contact_user_assoc, contact_user_assoc: { contact_id: @contact_user_assoc.contact_id, user_id: @contact_user_assoc.user_id }
    assert_redirected_to contact_user_assoc_path(assigns(:contact_user_assoc))
  end

  test "should destroy contact_user_assoc" do
    assert_difference('ContactUserAssoc.count', -1) do
      delete :destroy, id: @contact_user_assoc
    end

    assert_redirected_to contact_user_assocs_path
  end
end
