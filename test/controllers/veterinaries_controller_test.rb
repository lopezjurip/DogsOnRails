require 'test_helper'

class VeterinariesControllerTest < ActionController::TestCase
  setup do
    @veterinary = veterinaries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:veterinaries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create veterinary" do
    assert_difference('Veterinary.count') do
      post :create, veterinary: { address: @veterinary.address, name: @veterinary.name, phone: @veterinary.phone }
    end

    assert_redirected_to veterinary_path(assigns(:veterinary))
  end

  test "should show veterinary" do
    get :show, id: @veterinary
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @veterinary
    assert_response :success
  end

  test "should update veterinary" do
    patch :update, id: @veterinary, veterinary: { address: @veterinary.address, name: @veterinary.name, phone: @veterinary.phone }
    assert_redirected_to veterinary_path(assigns(:veterinary))
  end

  test "should destroy veterinary" do
    assert_difference('Veterinary.count', -1) do
      delete :destroy, id: @veterinary
    end

    assert_redirected_to veterinaries_path
  end
end
