class FountainsController < ApplicationController
  before_action :set_fountain, only: [:show, :edit, :update, :destroy]

  # GET /fountains
  # GET /fountains.json
  def index
    @fountains = Fountain.all
  end

  # GET /fountains/1
  # GET /fountains/1.json
  def show
  end

  # GET /fountains/new
  def new
    @fountain = Fountain.new
  end

  # GET /fountains/1/edit
  def edit
  end

  # POST /fountains
  # POST /fountains.json
  def create
    @fountain = Fountain.new(fountain_params)

    respond_to do |format|
      if @fountain.save
        format.html { redirect_to @fountain, notice: 'Fountain was successfully created.' }
        format.json { render :show, status: :created, location: @fountain }
      else
        format.html { render :new }
        format.json { render json: @fountain.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fountains/1
  # PATCH/PUT /fountains/1.json
  def update
    respond_to do |format|
      if @fountain.update(fountain_params)
        format.html { redirect_to @fountain, notice: 'Fountain was successfully updated.' }
        format.json { render :show, status: :ok, location: @fountain }
      else
        format.html { render :edit }
        format.json { render json: @fountain.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fountains/1
  # DELETE /fountains/1.json
  def destroy
    @fountain.destroy
    respond_to do |format|
      format.html { redirect_to fountains_url, notice: 'Fountain was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fountain
      @fountain = Fountain.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fountain_params
      params.require(:fountain).permit(:location, :photo_uri, :updated_by)
    end
end
