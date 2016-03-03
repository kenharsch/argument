class EvalReflectionsController < ApplicationController
  before_action :set_eval_reflection, only: [:show, :edit, :update, :destroy]

  # GET /eval_reflections
  # GET /eval_reflections.json
  def index
    @eval_reflections = EvalReflection.all
  end

  # GET /eval_reflections/1
  # GET /eval_reflections/1.json
  def show
  end

  # GET /eval_reflections/new
  def new
    @eval_reflection = EvalReflection.new
  end

  # GET /eval_reflections/1/edit
  def edit
  end

  # POST /eval_reflections
  # POST /eval_reflections.json
  def create
    @eval_reflection = EvalReflection.new(eval_reflection_params)

    respond_to do |format|
      if @eval_reflection.save
        format.html { redirect_to @eval_reflection, notice: 'Eval reflection was successfully created.' }
        format.json { render :show, status: :created, location: @eval_reflection }
      else
        format.html { render :new }
        format.json { render json: @eval_reflection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eval_reflections/1
  # PATCH/PUT /eval_reflections/1.json
  def update
    respond_to do |format|
      if @eval_reflection.update(eval_reflection_params)
        format.html { redirect_to @eval_reflection, notice: 'Eval reflection was successfully updated.' }
        format.json { render :show, status: :ok, location: @eval_reflection }
      else
        format.html { render :edit }
        format.json { render json: @eval_reflection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eval_reflections/1
  # DELETE /eval_reflections/1.json
  def destroy
    @eval_reflection.destroy
    respond_to do |format|
      format.html { redirect_to eval_reflections_url, notice: 'Eval reflection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eval_reflection
      @eval_reflection = EvalReflection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eval_reflection_params
      params.require(:eval_reflection).permit(:content, :user_id, :assignment_id)
    end
end
