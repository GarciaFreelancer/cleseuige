class ClasscoursesController < ApplicationController
  before_action :set_classcourse, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /classcourses
  # GET /classcourses.json
  def index
    @classcourses = Classcourse.all
  end

  # GET /classcourses/1
  # GET /classcourses/1.json
  def show
  end

  # GET /classcourses/new
  def new
    @classcourse = Classcourse.new
  end

  # GET /classcourses/1/edit
  def edit
  end

  # POST /classcourses
  # POST /classcourses.json
  def create
    @classcourse = Classcourse.new(classcourse_params)

    respond_to do |format|
      if @classcourse.save
        format.html { redirect_to @classcourse, notice: 'Classcourse was successfully created.' }
        format.json { render :show, status: :created, location: @classcourse }
      else
        format.html { render :new }
        format.json { render json: @classcourse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /classcourses/1
  # PATCH/PUT /classcourses/1.json
  def update
    respond_to do |format|
      if @classcourse.update(classcourse_params)
        format.html { redirect_to @classcourse, notice: 'Classcourse was successfully updated.' }
        format.json { render :show, status: :ok, location: @classcourse }
      else
        format.html { render :edit }
        format.json { render json: @classcourse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /classcourses/1
  # DELETE /classcourses/1.json
  def destroy
    @classcourse.destroy
    respond_to do |format|
      format.html { redirect_to classcourses_url, notice: 'Classcourse was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_classcourse
      @classcourse = Classcourse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def classcourse_params
      params.require(:classcourse).permit(:name, :period, :available, :course_id, :former_id, :description)
    end
end
