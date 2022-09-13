require "application_system_test_case"

class TasksJoinersTest < ApplicationSystemTestCase
  setup do
    @tasks_joiner = tasks_joiners(:one)
  end

  test "visiting the index" do
    visit tasks_joiners_url
    assert_selector "h1", text: "Tasks joiners"
  end

  test "should create tasks joiner" do
    visit tasks_joiners_url
    click_on "New tasks joiner"

    fill_in "Group", with: @tasks_joiner.group_id
    fill_in "Task", with: @tasks_joiner.task_id
    click_on "Create Tasks joiner"

    assert_text "Tasks joiner was successfully created"
    click_on "Back"
  end

  test "should update Tasks joiner" do
    visit tasks_joiner_url(@tasks_joiner)
    click_on "Edit this tasks joiner", match: :first

    fill_in "Group", with: @tasks_joiner.group_id
    fill_in "Task", with: @tasks_joiner.task_id
    click_on "Update Tasks joiner"

    assert_text "Tasks joiner was successfully updated"
    click_on "Back"
  end

  test "should destroy Tasks joiner" do
    visit tasks_joiner_url(@tasks_joiner)
    click_on "Destroy this tasks joiner", match: :first

    assert_text "Tasks joiner was successfully destroyed"
  end
end
