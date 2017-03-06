class CharacterCharactersController < ApplicationController
  before_action :set_character_character, only: [:show, :edit, :update, :destroy]

  # GET /character_characters
  # GET /character_characters.json
  def index
    @character_characters = CharacterCharacter.all
  end

  # GET /character_characters/1
  # GET /character_characters/1.json
  def show
  end

  # GET /character_characters/new
  def new
    @character_character = CharacterCharacter.new
  end

  # GET /character_characters/1/edit
  def edit
  end

  # POST /character_characters
  # POST /character_characters.json
  def create
    @character_character = CharacterCharacter.new(character_character_params)

    respond_to do |format|
      if @character_character.save
        format.html { redirect_to @character_character, notice: 'Character character was successfully created.' }
        format.json { render :show, status: :created, location: @character_character }
      else
        format.html { render :new }
        format.json { render json: @character_character.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /character_characters/1
  # PATCH/PUT /character_characters/1.json
  def update
    respond_to do |format|
      if @character_character.update(character_character_params)
        format.html { redirect_to @character_character, notice: 'Character character was successfully updated.' }
        format.json { render :show, status: :ok, location: @character_character }
      else
        format.html { render :edit }
        format.json { render json: @character_character.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /character_characters/1
  # DELETE /character_characters/1.json
  def destroy
    @character_character.destroy
    respond_to do |format|
      format.html { redirect_to character_characters_url, notice: 'Character character was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character_character
      @character_character = CharacterCharacter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def character_character_params
      params.require(:character_character).permit(:character_src_id, :character_dest_id, :description)
    end
end
