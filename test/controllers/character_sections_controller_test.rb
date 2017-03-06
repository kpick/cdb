require 'test_helper'

class CharacterSectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @character_section = character_sections(:one)
  end

  test "should get index" do
    get character_sections_url
    assert_response :success
  end

  test "should get new" do
    get new_character_section_url
    assert_response :success
  end

  test "should create character_section" do
    assert_difference('CharacterSection.count') do
      post character_sections_url, params: { character_section: { character_id: @character_section.character_id, section_id: @character_section.section_id, value: @character_section.value } }
    end

    assert_redirected_to character_section_url(CharacterSection.last)
  end

  test "should show character_section" do
    get character_section_url(@character_section)
    assert_response :success
  end

  test "should get edit" do
    get edit_character_section_url(@character_section)
    assert_response :success
  end

  test "should update character_section" do
    patch character_section_url(@character_section), params: { character_section: { character_id: @character_section.character_id, section_id: @character_section.section_id, value: @character_section.value } }
    assert_redirected_to character_section_url(@character_section)
  end

  test "should destroy character_section" do
    assert_difference('CharacterSection.count', -1) do
      delete character_section_url(@character_section)
    end

    assert_redirected_to character_sections_url
  end
end
