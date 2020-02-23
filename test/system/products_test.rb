require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:one)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "creating a Product" do
    visit products_url
    click_on "New Product"

    fill_in "Description", with: @product.description
    check "Lowest" if @product.lowest
    fill_in "Name", with: @product.name
    fill_in "Non taxed price", with: @product.non_taxed_price
    fill_in "Point", with: @product.point
    fill_in "Price", with: @product.price
    fill_in "Quantity", with: @product.quantity
    fill_in "Shipping fee", with: @product.shipping_fee
    fill_in "Store", with: @product.store
    fill_in "Avarage_sum_price", with: @product.avarage_sum_price
    fill_in "Sum_price", with: @product.sum_price
    fill_in "Unit", with: @product.unit
    fill_in "Url", with: @product.url
    fill_in "Weight", with: @product.weight
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "updating a Product" do
    visit products_url
    click_on "Edit", match: :first

    fill_in "Description", with: @product.description
    check "Lowest" if @product.lowest
    fill_in "Name", with: @product.name
    fill_in "Non taxed price", with: @product.non_taxed_price
    fill_in "Point", with: @product.point
    fill_in "Price", with: @product.price
    fill_in "Quantity", with: @product.quantity
    fill_in "Shipping fee", with: @product.shipping_fee
    fill_in "Store", with: @product.store
    fill_in "Avarage_sum_price", with: @product.avarage_sum_pricesum
    fill_in "Sum_price", with: @product.sum_price
    fill_in "Unit", with: @product.unit
    fill_in "Url", with: @product.url
    fill_in "Weight", with: @product.weight
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "destroying a Product" do
    visit products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product was successfully destroyed"
  end
end
