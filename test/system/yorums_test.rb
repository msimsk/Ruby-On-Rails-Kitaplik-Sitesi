require "application_system_test_case"

class YorumsTest < ApplicationSystemTestCase
  setup do
    @yorum = yorums(:one)
  end

  test "visiting the index" do
    visit yorums_url
    assert_selector "h1", text: "Yorums"
  end

  test "creating a Yorum" do
    visit yorums_url
    click_on "New Yorum"

    fill_in "Mesaj", with: @yorum.mesaj
    click_on "Create Yorum"

    assert_text "Yorum was successfully created"
    click_on "Back"
  end

  test "updating a Yorum" do
    visit yorums_url
    click_on "Edit", match: :first

    fill_in "Mesaj", with: @yorum.mesaj
    click_on "Update Yorum"

    assert_text "Yorum was successfully updated"
    click_on "Back"
  end

  test "destroying a Yorum" do
    visit yorums_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Yorum was successfully destroyed"
  end
end
