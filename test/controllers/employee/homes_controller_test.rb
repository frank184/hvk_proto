require 'test_helper'

class Employee::HomesControllerTest < ActionController::TestCase
  setup do
    @employee_home = employee_homes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employee_homes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee_home" do
    assert_difference('Employee::Home.count') do
      post :create, employee_home: {  }
    end

    assert_redirected_to employee_home_path(assigns(:employee_home))
  end

  test "should show employee_home" do
    get :show, id: @employee_home
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee_home
    assert_response :success
  end

  test "should update employee_home" do
    patch :update, id: @employee_home, employee_home: {  }
    assert_redirected_to employee_home_path(assigns(:employee_home))
  end

  test "should destroy employee_home" do
    assert_difference('Employee::Home.count', -1) do
      delete :destroy, id: @employee_home
    end

    assert_redirected_to employee_homes_path
  end
end
