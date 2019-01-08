require 'test_helper'

class MemosControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
    @memo = memos(:one)
  end

  test "should get index" do
    get :index, params: { user_id: @user }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { user_id: @user }
    assert_response :success
  end

  test "should create memo" do
    assert_difference('Memo.count') do
      post :create, params: { user_id: @user, memo: @memo.attributes }
    end

    assert_redirected_to user_memo_path(@user, Memo.last)
  end

  test "should show memo" do
    get :show, params: { user_id: @user, id: @memo }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { user_id: @user, id: @memo }
    assert_response :success
  end

  test "should update memo" do
    put :update, params: { user_id: @user, id: @memo, memo: @memo.attributes }
    assert_redirected_to user_memo_path(@user, Memo.last)
  end

  test "should destroy memo" do
    assert_difference('Memo.count', -1) do
      delete :destroy, params: { user_id: @user, id: @memo }
    end

    assert_redirected_to user_memos_path(@user)
  end
end
