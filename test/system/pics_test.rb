require "application_system_test_case"

class PicsTest < ApplicationSystemTestCase
  setup do
    @pic = pics(:one)
  end

  test "visiting the index" do
    visit pics_url
    assert_selector "h1", text: "Pics"
  end

  test "creating a Pic" do
    visit pics_url
    click_on "New Pic"

    fill_in "Award", with: @pic.award
    fill_in "Awardday", with: @pic.awardday
    fill_in "Buyer", with: @pic.buyer
    fill_in "Buyeraddress", with: @pic.buyeraddress
    fill_in "Buyeremail", with: @pic.buyeremail
    fill_in "Buyerphone", with: @pic.buyerphone
    fill_in "Buyerzip", with: @pic.buyerzip
    fill_in "Englishtitle", with: @pic.englishtitle
    fill_in "Gosu", with: @pic.gosu
    fill_in "Height", with: @pic.height
    fill_in "Img", with: @pic.img
    fill_in "Made", with: @pic.made
    fill_in "Remark", with: @pic.remark
    fill_in "Sellstatus", with: @pic.sellstatus
    fill_in "Soldprice", with: @pic.soldprice
    fill_in "Solidly", with: @pic.solidly
    fill_in "Technique", with: @pic.technique
    fill_in "Title", with: @pic.title
    fill_in "Width", with: @pic.width
    click_on "Create Pic"

    assert_text "Pic was successfully created"
    click_on "Back"
  end

  test "updating a Pic" do
    visit pics_url
    click_on "Edit", match: :first

    fill_in "Award", with: @pic.award
    fill_in "Awardday", with: @pic.awardday
    fill_in "Buyer", with: @pic.buyer
    fill_in "Buyeraddress", with: @pic.buyeraddress
    fill_in "Buyeremail", with: @pic.buyeremail
    fill_in "Buyerphone", with: @pic.buyerphone
    fill_in "Buyerzip", with: @pic.buyerzip
    fill_in "Englishtitle", with: @pic.englishtitle
    fill_in "Gosu", with: @pic.gosu
    fill_in "Height", with: @pic.height
    fill_in "Img", with: @pic.img
    fill_in "Made", with: @pic.made
    fill_in "Remark", with: @pic.remark
    fill_in "Sellstatus", with: @pic.sellstatus
    fill_in "Soldprice", with: @pic.soldprice
    fill_in "Solidly", with: @pic.solidly
    fill_in "Technique", with: @pic.technique
    fill_in "Title", with: @pic.title
    fill_in "Width", with: @pic.width
    click_on "Update Pic"

    assert_text "Pic was successfully updated"
    click_on "Back"
  end

  test "destroying a Pic" do
    visit pics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pic was successfully destroyed"
  end
end
