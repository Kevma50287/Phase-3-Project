require "application_system_test_case"

class GroupJoinersTest < ApplicationSystemTestCase
  setup do
    @group_joiner = group_joiners(:one)
  end

  test "visiting the index" do
    visit group_joiners_url
    assert_selector "h1", text: "Group joiners"
  end

  test "should create group joiner" do
    visit group_joiners_url
    click_on "New group joiner"

    fill_in "Group", with: @group_joiner.group_id
    check "Isadmin?" if @group_joiner.isAdmin?
    fill_in "User", with: @group_joiner.user_id
    click_on "Create Group joiner"

    assert_text "Group joiner was successfully created"
    click_on "Back"
  end

  test "should update Group joiner" do
    visit group_joiner_url(@group_joiner)
    click_on "Edit this group joiner", match: :first

    fill_in "Group", with: @group_joiner.group_id
    check "Isadmin?" if @group_joiner.isAdmin?
    fill_in "User", with: @group_joiner.user_id
    click_on "Update Group joiner"

    assert_text "Group joiner was successfully updated"
    click_on "Back"
  end

  test "should destroy Group joiner" do
    visit group_joiner_url(@group_joiner)
    click_on "Destroy this group joiner", match: :first

    assert_text "Group joiner was successfully destroyed"
  end
end
