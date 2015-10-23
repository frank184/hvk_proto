require 'test_helper'

class Employee::ReservationsControllerTest < ActionController::TestCase
  setup do
    @employee_reservation = employee_reservations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employee_reservations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee_reservation" do
    assert_difference('Employee::Reservation.count') do
      post :create, employee_reservation: {  }
    end

    assert_redirected_to employee_reservation_path(assigns(:employee_reservation))
  end

  test "should show employee_reservation" do
    get :show, id: @employee_reservation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee_reservation
    assert_response :success
  end

  test "should update employee_reservation" do
    patch :update, id: @employee_reservation, employee_reservation: {  }
    assert_redirected_to employee_reservation_path(assigns(:employee_reservation))
  end

  test "should destroy employee_reservation" do
    assert_difference('Employee::Reservation.count', -1) do
      delete :destroy, id: @employee_reservation
    end

    assert_redirected_to employee_reservations_path
  end
end
