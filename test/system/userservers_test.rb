require "application_system_test_case"

class UserserversTest < ApplicationSystemTestCase
  setup do
    @userserver = userservers(:one)
  end

  test "visiting the index" do
    visit userservers_url
    assert_selector "h1", text: "Userservers"
  end

  test "creating a Userserver" do
    visit userservers_url
    click_on "New Userserver"

    fill_in "Online", with: @userserver.online
    fill_in "Owner", with: @userserver.owner
    fill_in "User", with: @userserver.user_id
    fill_in "Userfile", with: @userserver.userfile_id
    click_on "Create Userserver"

    assert_text "Userserver was successfully created"
    click_on "Back"
  end

  test "updating a Userserver" do
    visit userservers_url
    click_on "Edit", match: :first

    fill_in "Online", with: @userserver.online
    fill_in "Owner", with: @userserver.owner
    fill_in "User", with: @userserver.user_id
    fill_in "Userfile", with: @userserver.userfile_id
    click_on "Update Userserver"

    assert_text "Userserver was successfully updated"
    click_on "Back"
  end

  test "destroying a Userserver" do
    visit userservers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Userserver was successfully destroyed"
  end
end
