class BallersController < ApplicationController
  before_action :set_baller, only: [:show, :edit, :update, :destroy]

  # GET /ballers
  # GET /ballers.json
  def index
    @ballers = Baller.all
  end

  # GET /ballers/1
  # GET /ballers/1.json
  def show
  end

  # GET /ballers/new
  def new
    @baller = Baller.new
  end

  # GET /ballers/1/edit
  def edit
  end

  # POST /ballers
  # POST /ballers.json
  def create
    @baller = Baller.new(baller_params)

    respond_to do |format|
      if @baller.save
        format.html { redirect_to @baller, notice: 'Baller was successfully created.' }
        format.json { render action: 'show', status: :created, location: @baller }
      else
        format.html { render action: 'new' }
        format.json { render json: @baller.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ballers/1
  # PATCH/PUT /ballers/1.json
  def update
    respond_to do |format|
      if @baller.update(baller_params)
        format.html { redirect_to @baller, notice: 'Baller was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @baller.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ballers/1
  # DELETE /ballers/1.json
  def destroy
    @baller.destroy
    respond_to do |format|
      format.html { redirect_to ballers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baller
      @baller = Baller.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def baller_params
      params.require(:baller).permit(:name, :email, :phone, :active)
    end
end
