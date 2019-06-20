require "application_system_test_case"

class ContactsTest < ApplicationSystemTestCase
  setup do
    @contact = contacts(:one)
  end

  test "visiting the index" do
    visit contacts_url
    assert_selector "h1", text: "Contacts"
  end

  test "creating a Contact" do
    visit contacts_url
    click_on "New Contact"

    fill_in "", with: @contact.
    fill_in "Bathrooms", with: @contact.bathrooms
    fill_in "Bedrooms", with: @contact.bedrooms
    fill_in "Budget", with: @contact.budget
    fill_in "Email", with: @contact.email
    fill_in "Name", with: @contact.name
    check "Pets" if @contact.pets
    fill_in "Phone", with: @contact.phone
    fill_in "Source", with: @contact.source
    fill_in "String", with: @contact.string
    click_on "Create Contact"

    assert_text "Contact was successfully created"
    click_on "Back"
  end

  test "updating a Contact" do
    visit contacts_url
    click_on "Edit", match: :first

    fill_in "", with: @contact.
    fill_in "Bathrooms", with: @contact.bathrooms
    fill_in "Bedrooms", with: @contact.bedrooms
    fill_in "Budget", with: @contact.budget
    fill_in "Email", with: @contact.email
    fill_in "Name", with: @contact.name
    check "Pets" if @contact.pets
    fill_in "Phone", with: @contact.phone
    fill_in "Source", with: @contact.source
    fill_in "String", with: @contact.string
    click_on "Update Contact"

    assert_text "Contact was successfully updated"
    click_on "Back"
  end

  test "destroying a Contact" do
    visit contacts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contact was successfully destroyed"
  end
end
