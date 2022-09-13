require "test_helper"

class GroupJoinersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group_joiner = group_joiners(:one)
  end

  test "should get index" do
    get group_joiners_url
    assert_response :success
  end

  test "should get new" do
    get new_group_joiner_url
    assert_response :success
  end

  test "should create group_joiner" do
    assert_difference("GroupJoiner.count") do
      post group_joiners_url, params: { group_joiner: { group_id: @group_joiner.group_id, isAdmin?: @group_joiner.isAdmin?, user_id: @group_joiner.user_id } }
    end

    assert_redirected_to group_joiner_url(GroupJoiner.last)
  end

  test "should show group_joiner" do
    get group_joiner_url(@group_joiner)
    assert_response :success
  end

  test "should get edit" do
    get edit_group_joiner_url(@group_joiner)
    assert_response :success
  end

  test "should update group_joiner" do
    patch group_joiner_url(@group_joiner), params: { group_joiner: { group_id: @group_joiner.group_id, isAdmin?: @group_joiner.isAdmin?, user_id: @group_joiner.user_id } }
    assert_redirected_to group_joiner_url(@group_joiner)
  end

  test "should destroy group_joiner" do
    assert_difference("GroupJoiner.count", -1) do
      delete group_joiner_url(@group_joiner)
    end

    assert_redirected_to group_joiners_url
  end
end
