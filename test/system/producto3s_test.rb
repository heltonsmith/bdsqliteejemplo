require "application_system_test_case"

class Producto3sTest < ApplicationSystemTestCase
  setup do
    @producto3 = producto3s(:one)
  end

  test "visiting the index" do
    visit producto3s_url
    assert_selector "h1", text: "Producto3s"
  end

  test "should create producto3" do
    visit producto3s_url
    click_on "New producto3"

    fill_in "Descripcion", with: @producto3.descripcion
    fill_in "Nombre", with: @producto3.nombre
    fill_in "Precio", with: @producto3.precio
    click_on "Create Producto3"

    assert_text "Producto3 was successfully created"
    click_on "Back"
  end

  test "should update Producto3" do
    visit producto3_url(@producto3)
    click_on "Edit this producto3", match: :first

    fill_in "Descripcion", with: @producto3.descripcion
    fill_in "Nombre", with: @producto3.nombre
    fill_in "Precio", with: @producto3.precio
    click_on "Update Producto3"

    assert_text "Producto3 was successfully updated"
    click_on "Back"
  end

  test "should destroy Producto3" do
    visit producto3_url(@producto3)
    click_on "Destroy this producto3", match: :first

    assert_text "Producto3 was successfully destroyed"
  end
end
