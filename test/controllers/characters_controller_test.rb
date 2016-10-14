require 'test_helper'

class CharactersControllerTest < ActionController::TestCase
  setup do
    @character = characters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:characters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create character" do
    assert_difference('Character.count') do
      post :create, character: { alias: @character.alias, birthday: @character.birthday, boggart: @character.boggart, death_eater: @character.death_eater, dumbledores_army: @character.dumbledores_army, house_id: @character.house_id, name: @character.name, order_of_the_phoenix: @character.order_of_the_phoenix, patronus: @character.patronus, school_id: @character.school_id, wand: @character.wand }
    end

    assert_redirected_to character_path(assigns(:character))
  end

  test "should show character" do
    get :show, id: @character
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @character
    assert_response :success
  end

  test "should update character" do
    patch :update, id: @character, character: { alias: @character.alias, birthday: @character.birthday, boggart: @character.boggart, death_eater: @character.death_eater, dumbledores_army: @character.dumbledores_army, house_id: @character.house_id, name: @character.name, order_of_the_phoenix: @character.order_of_the_phoenix, patronus: @character.patronus, school_id: @character.school_id, wand: @character.wand }
    assert_redirected_to character_path(assigns(:character))
  end

  test "should destroy character" do
    assert_difference('Character.count', -1) do
      delete :destroy, id: @character
    end

    assert_redirected_to characters_path
  end
end
