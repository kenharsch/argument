class EvaluationsController < ApplicationController
  before_action :set_evaluation, only: [:show, :edit, :update, :destroy]

  # GET /evaluations
  # GET /evaluations.json
  def index
    if current_user.admin?
      @evaluations = Evaluation.all
    else
      @evaluations = Evaluation.uncached do
        Evaluation.rank(:row_order).where(:user_id=>current_user.id, :submitted => false)      
      end
    end
  end

  def update_row_order
    ahoy.track "Updated Row Order"
    @evaluation = Evaluation.uncached do
      Evaluation.find(evaluation_params[:evaluation_id])
    end
    @evaluation.row_order_position = evaluation_params[:row_order_position]
    @evaluation.save
    render nothing: true # POST action no view rendered
  end

  def save_rankings
    @evaluations = Evaluation.uncached do
     Evaluation.rank(:row_order).where(:user_id=>current_user.id)
   end
     i = 1
     @evaluations.each do |evaluation|
      evaluation.user_rank = i
      evaluation.submitted = true
      evaluation.save
      i += 1
     end
     render "submitted"
  end


  # GET /evaluations/1
  # GET /evaluations/1.json
  def show
    @evaluation = Evaluation.find(params[:id])
    ahoy.track "Viewed Evaluations", evaluation_id: @evaluation.id
  end

  # GET /evaluations/new
  def new
    @evaluation = Evaluation.new
  end

  # GET /evaluations/1/edit
  def edit
    ahoy.track "Edited Evaluation"
   @evaluation = Evaluation.find(params[:id])
  end

  # POST /evaluations
  # POST /evaluations.json
  def create
    @evaluation = Evaluation.new(evaluation_params)
    ahoy.track "Updated Evaluation"
    respond_to do |format|
      if @evaluation.save
        format.html { redirect_to @evaluation, notice: 'Evaluation was successfully created.' }
        format.json { render :show, status: :created, location: @evaluation }
      else
        format.html { render :new }
        format.json { render json: @evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evaluations/1
  # PATCH/PUT /evaluations/1.json
  def update
    respond_to do |format|
      if @evaluation.update(evaluation_params)
        format.html { redirect_to @evaluation, notice: 'Evaluation was successfully updated.' }
        format.json { render :show, status: :ok, location: @evaluation }
      else
        format.html { render :edit }
        format.json { render json: @evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evaluations/1
  # DELETE /evaluations/1.json
  def destroy
    @evaluation.destroy
    respond_to do |format|
      format.html { redirect_to evaluations_url, notice: 'Evaluation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evaluation
      @evaluation = Evaluation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def evaluation_params
      params[:evaluation].permit(:post_id, :user_id, :rating_1, :rating_2, :rating_3, :comment_1, :comment_2, :comment_3, :row_order_position, :user_rank, :evaluation_id)
    end
end
