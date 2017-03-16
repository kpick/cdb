class CharacterSectionsController < AdminsController
  before_action :set_character_section, only: [:show, :edit, :update, :destroy]

  # GET /character_sections
  # GET /character_sections.json
  def index
    @character_sections = CharacterSection.all
  end

  # GET /character_sections/1
  # GET /character_sections/1.json
  def show
  end

  # GET /character_sections/new
  def new
    @character_section = CharacterSection.new
  end

  # GET /character_sections/1/edit
  def edit
  end

  # POST /character_sections
  # POST /character_sections.json
  def create
    @character_section = CharacterSection.new(character_section_params)

    respond_to do |format|
      if @character_section.save
        format.html { redirect_to @character_section, notice: 'Character section was successfully created.' }
        format.json { render :show, status: :created, location: @character_section }
      else
        format.html { render :new }
        format.json { render json: @character_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /character_sections/1
  # PATCH/PUT /character_sections/1.json
  def update
    respond_to do |format|
      if @character_section.update(character_section_params)
        format.html { redirect_to @character_section, notice: 'Character section was successfully updated.' }
        format.json { render :show, status: :ok, location: @character_section }
      else
        format.html { render :edit }
        format.json { render json: @character_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /character_sections/1
  # DELETE /character_sections/1.json
  def destroy
    @character_section.destroy
    respond_to do |format|
      format.html { redirect_to character_sections_url, notice: 'Character section was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character_section
      @character_section = CharacterSection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def character_section_params
      params.require(:character_section).permit(:section_id, :character_id, :value)
    end
end
