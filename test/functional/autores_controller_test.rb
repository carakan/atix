require 'test_helper'

class AutoresControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:autores)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_autor
    assert_difference('Autor.count') do
      post :create, :autor => { }
    end

    assert_redirected_to autor_path(assigns(:autor))
  end

  def test_should_show_autor
    get :show, :id => autores(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => autores(:one).id
    assert_response :success
  end

  def test_should_update_autor
    put :update, :id => autores(:one).id, :autor => { }
    assert_redirected_to autor_path(assigns(:autor))
  end

  def test_should_destroy_autor
    assert_difference('Autor.count', -1) do
      delete :destroy, :id => autores(:one).id
    end

    assert_redirected_to autores_path
  end
end
