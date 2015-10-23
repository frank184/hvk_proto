require 'test_helper'

class Admin::ReservationsControllerTest < ActionController::TestCase
  setup do
    @admin_reservation = admin_reservations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_reservations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_reservation" do
    assert_difference('Admin::Reservation.count') do
      post :create, admin_reservation: {  }
    end

    assert_redirected_to admin_reservation_path(assigns(:admin_reservation))
  end

  test "should show admin_reservation" do
    get :show, id: @admin_reservation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_reservation
    assert_response :success
  end

  test "should update admin_reservation" do
    patch :update, id: @admin_reservation, admin_reservation: {  }
    assert_redirected_to admin_reservation_path(assigns(:admin_reservation))
  end

  test "should destroy admin_reservation" do
    assert_difference('Admin::Reservation.count', -1) do
      delete :destroy, id: @admin_reservation
    end

    assert_redirected_to admin_reservations_path
  end
end
