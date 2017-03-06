require 'test_helper'

class CharacterCharactersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @character_character = character_characters(:one)
  end

  test "should get index" do
    get character_characters_url
    assert_response :success
  end

  test "should get new" do
    get new_character_character_url
    assert_response :success
  end

  test "should create character_character" do
    assert_difference('CharacterCharacter.count') do
      post character_characters_url, params: { character_character: { character_dest_id: @character_character.character_dest_id, character_src_id: @character_character.character_src_id, description: @character_character.description } }
    end

    assert_redirected_to character_character_url(CharacterCharacter.last)
  end

  test "should show character_character" do
    get character_character_url(@character_character)
    assert_response :success
  end

  test "should get edit" do
    get edit_character_character_url(@character_character)
    assert_response :success
  end

  test "should update character_character" do
    patch character_character_url(@character_character), params: { character_character: { character_dest_id: @character_character.character_dest_id, character_src_id: @character_character.character_src_id, description: @character_character.description } }
    assert_redirected_to character_character_url(@character_character)
  end

  test "should destroy character_character" do
    assert_difference('CharacterCharacter.count', -1) do
      delete character_character_url(@character_character)
    end

    assert_redirected_to character_characters_url
  end
end
