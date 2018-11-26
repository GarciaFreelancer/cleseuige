class FormersController < ApplicationController
  before_action :set_former, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /formers
  # GET /formers.json
  def index
    @formers = Former.all
  end

  # GET /formers/1
  # GET /formers/1.json
  def show
  end

  # GET /formers/new
  def new
    @former = Former.new
  end

  # GET /formers/1/edit
  def edit
  end

  # POST /formers
  # POST /formers.json
  def create
    @former = Former.new(former_params)

    respond_to do |format|
      if @former.save
        format.html { redirect_to @former, notice: 'Former was successfully created.' }
        format.json { render :show, status: :created, location: @former }
      else
        format.html { render :new }
        format.json { render json: @former.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /formers/1
  # PATCH/PUT /formers/1.json
  def update
    respond_to do |format|
      if @former.update(former_params)
        format.html { redirect_to @former, notice: 'Former was successfully updated.' }
        format.json { render :show, status: :ok, location: @former }
      else
        format.html { render :edit }
        format.json { render json: @former.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /formers/1
  # DELETE /formers/1.json
  def destroy
    @former.destroy
    respond_to do |format|
      format.html { redirect_to formers_url, notice: 'Former was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_former
      @former = Former.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def former_params
      params.require(:former).permit(:name, :phone_number, :email, :description)
    end
end
