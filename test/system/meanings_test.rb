require "application_system_test_case"

class MeaningsTest < ApplicationSystemTestCase
  setup do
    @meaning = meanings(:one)
  end

  test "visiting the index" do
    visit meanings_url
    assert_selector "h1", text: "Meanings"
  end

  test "creating a Meaning" do
    visit meanings_url
    click_on "New Meaning"

    fill_in "En meaning", with: @meaning.en_meaning
    fill_in "Kind", with: @meaning.kind
    fill_in "Zh meaning", with: @meaning.zh_meaning
    click_on "Create Meaning"

    assert_text "Meaning was successfully created"
    click_on "Back"
  end

  test "updating a Meaning" do
    visit meanings_url
    click_on "Edit", match: :first

    fill_in "En meaning", with: @meaning.en_meaning
    fill_in "Kind", with: @meaning.kind
    fill_in "Zh meaning", with: @meaning.zh_meaning
    click_on "Update Meaning"

    assert_text "Meaning was successfully updated"
    click_on "Back"
  end

  test "destroying a Meaning" do
    visit meanings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Meaning was successfully destroyed"
  end
end
