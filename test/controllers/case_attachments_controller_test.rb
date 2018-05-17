require 'test_helper'

class CaseAttachmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @case_attachment = case_attachments(:one)
  end

  test "should get index" do
    get case_attachments_url
    assert_response :success
  end

  test "should get new" do
    get new_case_attachment_url
    assert_response :success
  end

  test "should create case_attachment" do
    assert_difference('CaseAttachment.count') do
      post case_attachments_url, params: { case_attachment: { case_id: @case_attachment.case_id, photo: @case_attachment.photo } }
    end

    assert_redirected_to case_attachment_url(CaseAttachment.last)
  end

  test "should show case_attachment" do
    get case_attachment_url(@case_attachment)
    assert_response :success
  end

  test "should get edit" do
    get edit_case_attachment_url(@case_attachment)
    assert_response :success
  end

  test "should update case_attachment" do
    patch case_attachment_url(@case_attachment), params: { case_attachment: { case_id: @case_attachment.case_id, photo: @case_attachment.photo } }
    assert_redirected_to case_attachment_url(@case_attachment)
  end

  test "should destroy case_attachment" do
    assert_difference('CaseAttachment.count', -1) do
      delete case_attachment_url(@case_attachment)
    end

    assert_redirected_to case_attachments_url
  end
end
