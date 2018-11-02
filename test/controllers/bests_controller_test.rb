require 'test_helper'

class BestsControllerTest < ActionController::TestCase
  setup do
    @best = bests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create best" do
    assert_difference('Best.count') do
      post :create, best: { amount: @best.amount, date: @best.date, image: @best.image, interest: @best.interest, workdate: @best.workdate, worktime: @best.worktime }
    end

    assert_redirected_to best_path(assigns(:best))
  end

  test "should show best" do
    get :show, id: @best
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @best
    assert_response :success
  end

  test "should update best" do
    patch :update, id: @best, best: { amount: @best.amount, date: @best.date, image: @best.image, interest: @best.interest, workdate: @best.workdate, worktime: @best.worktime }
    assert_redirected_to best_path(assigns(:best))
  end

  test "should destroy best" do
    assert_difference('Best.count', -1) do
      delete :destroy, id: @best
    end

    assert_redirected_to bests_path
  end
end
