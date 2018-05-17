require "application_system_test_case"

class CaseAttachmentsTest < ApplicationSystemTestCase
  setup do
    @case_attachment = case_attachments(:one)
  end

  test "visiting the index" do
    visit case_attachments_url
    assert_selector "h1", text: "Case Attachments"
  end

  test "creating a Case attachment" do
    visit case_attachments_url
    click_on "New Case Attachment"

    fill_in "Case", with: @case_attachment.case_id
    fill_in "Photo", with: @case_attachment.photo
    click_on "Create Case attachment"

    assert_text "Case attachment was successfully created"
    click_on "Back"
  end

  test "updating a Case attachment" do
    visit case_attachments_url
    click_on "Edit", match: :first

    fill_in "Case", with: @case_attachment.case_id
    fill_in "Photo", with: @case_attachment.photo
    click_on "Update Case attachment"

    assert_text "Case attachment was successfully updated"
    click_on "Back"
  end

  test "destroying a Case attachment" do
    visit case_attachments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Case attachment was successfully destroyed"
  end
end
