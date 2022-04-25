require "test_helper"

class Producto3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @producto3 = producto3s(:one)
  end

  test "should get index" do
    get producto3s_url
    assert_response :success
  end

  test "should get new" do
    get new_producto3_url
    assert_response :success
  end

  test "should create producto3" do
    assert_difference("Producto3.count") do
      post producto3s_url, params: { producto3: { descripcion: @producto3.descripcion, nombre: @producto3.nombre, precio: @producto3.precio } }
    end

    assert_redirected_to producto3_url(Producto3.last)
  end

  test "should show producto3" do
    get producto3_url(@producto3)
    assert_response :success
  end

  test "should get edit" do
    get edit_producto3_url(@producto3)
    assert_response :success
  end

  test "should update producto3" do
    patch producto3_url(@producto3), params: { producto3: { descripcion: @producto3.descripcion, nombre: @producto3.nombre, precio: @producto3.precio } }
    assert_redirected_to producto3_url(@producto3)
  end

  test "should destroy producto3" do
    assert_difference("Producto3.count", -1) do
      delete producto3_url(@producto3)
    end

    assert_redirected_to producto3s_url
  end
end
