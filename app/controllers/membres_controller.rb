class MembresController < ApplicationController
  before_action :set_membre, only: [:show, :edit, :update, :destroy]

  # GET /membres
  # GET /membres.json
  def index
    @membres = Membre.all
  end

  # GET /membres/1
  # GET /membres/1.json
  def show
  end

  # GET /membres/new
  def new
    @membre = Membre.new
  end

  # GET /membres/1/edit
  def edit
  end

  # POST /membres
  # POST /membres.json
  def create
    @membre = Membre.new(membre_params)

    respond_to do |format|
      if @membre.save
        format.html { redirect_to @membre, notice: 'Membre was successfully created.' }
        format.json { render :show, status: :created, location: @membre }
      else
        format.html { render :new }
        format.json { render json: @membre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /membres/1
  # PATCH/PUT /membres/1.json
  def update
    respond_to do |format|
      if @membre.update(membre_params)
        format.html { redirect_to @membre, notice: 'Membre was successfully updated.' }
        format.json { render :show, status: :ok, location: @membre }
      else
        format.html { render :edit }
        format.json { render json: @membre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /membres/1
  # DELETE /membres/1.json
  def destroy
    @membre.destroy
    respond_to do |format|
      format.html { redirect_to membres_url, notice: 'Membre was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_membre
      @membre = Membre.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def membre_params
      params.require(:membre).permit(:nom, :tel)
    end
end
