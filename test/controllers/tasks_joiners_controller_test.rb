require "test_helper"

class TasksJoinersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tasks_joiner = tasks_joiners(:one)
  end

  test "should get index" do
    get tasks_joiners_url
    assert_response :success
  end

  test "should get new" do
    get new_tasks_joiner_url
    assert_response :success
  end

  test "should create tasks_joiner" do
    assert_difference("TasksJoiner.count") do
      post tasks_joiners_url, params: { tasks_joiner: { group_id: @tasks_joiner.group_id, task_id: @tasks_joiner.task_id } }
    end

    assert_redirected_to tasks_joiner_url(TasksJoiner.last)
  end

  test "should show tasks_joiner" do
    get tasks_joiner_url(@tasks_joiner)
    assert_response :success
  end

  test "should get edit" do
    get edit_tasks_joiner_url(@tasks_joiner)
    assert_response :success
  end

  test "should update tasks_joiner" do
    patch tasks_joiner_url(@tasks_joiner), params: { tasks_joiner: { group_id: @tasks_joiner.group_id, task_id: @tasks_joiner.task_id } }
    assert_redirected_to tasks_joiner_url(@tasks_joiner)
  end

  test "should destroy tasks_joiner" do
    assert_difference("TasksJoiner.count", -1) do
      delete tasks_joiner_url(@tasks_joiner)
    end

    assert_redirected_to tasks_joiners_url
  end
end
