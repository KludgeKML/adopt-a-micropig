require "test_helper"

class MicropigsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @micropig = micropigs(:one)
  end

  test "should get index" do
    get micropigs_url
    assert_response :success
  end

  test "should get new" do
    get new_micropig_url
    assert_response :success
  end

  test "should create micropig" do
    assert_difference("Micropig.count") do
      post micropigs_url, params: { micropig: { age: @micropig.age, name: @micropig.name, notes: @micropig.notes } }
    end

    assert_redirected_to micropig_url(Micropig.last)
  end

  test "should show micropig" do
    get micropig_url(@micropig)
    assert_response :success
  end

  test "should get edit" do
    get edit_micropig_url(@micropig)
    assert_response :success
  end

  test "should update micropig" do
    patch micropig_url(@micropig), params: { micropig: { age: @micropig.age, name: @micropig.name, notes: @micropig.notes } }
    assert_redirected_to micropig_url(@micropig)
  end

  test "should destroy micropig" do
    assert_difference("Micropig.count", -1) do
      delete micropig_url(@micropig)
    end

    assert_redirected_to micropigs_url
  end
end
