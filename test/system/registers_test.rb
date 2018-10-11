require "application_system_test_case"

class RegistersTest < ApplicationSystemTestCase
  setup do
    @register = registers(:one)
  end

  test "visiting the index" do
    visit registers_url
    assert_selector "h1", text: "Registers"
  end

  test "creating a Register" do
    visit registers_url
    click_on "New Register"

    fill_in "Email", with: @register.email
    fill_in "Field 1", with: @register.field_1
    fill_in "Field 2", with: @register.field_2
    fill_in "Field 3", with: @register.field_3
    fill_in "First Name", with: @register.first_name
    fill_in "Last Name", with: @register.last_name
    fill_in "Phone Number", with: @register.phone_number
    click_on "Create Register"

    assert_text "Register was successfully created"
    click_on "Back"
  end

  test "updating a Register" do
    visit registers_url
    click_on "Edit", match: :first

    fill_in "Email", with: @register.email
    fill_in "Field 1", with: @register.field_1
    fill_in "Field 2", with: @register.field_2
    fill_in "Field 3", with: @register.field_3
    fill_in "First Name", with: @register.first_name
    fill_in "Last Name", with: @register.last_name
    fill_in "Phone Number", with: @register.phone_number
    click_on "Update Register"

    assert_text "Register was successfully updated"
    click_on "Back"
  end

  test "destroying a Register" do
    visit registers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Register was successfully destroyed"
  end
end
