require 'test_helper'

class Employee::PetsControllerTest < ActionController::TestCase
  setup do
    @employee_pet = employee_pets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employee_pets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee_pet" do
    assert_difference('Employee::Pet.count') do
      post :create, employee_pet: {  }
    end

    assert_redirected_to employee_pet_path(assigns(:employee_pet))
  end

  test "should show employee_pet" do
    get :show, id: @employee_pet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee_pet
    assert_response :success
  end

  test "should update employee_pet" do
    patch :update, id: @employee_pet, employee_pet: {  }
    assert_redirected_to employee_pet_path(assigns(:employee_pet))
  end

  test "should destroy employee_pet" do
    assert_difference('Employee::Pet.count', -1) do
      delete :destroy, id: @employee_pet
    end

    assert_redirected_to employee_pets_path
  end
end
