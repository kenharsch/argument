class AssignedPositionsController < ApplicationController
  before_action :set_assigned_position, only: [:show, :edit, :update, :destroy]

  # GET /assigned_positions
  # GET /assigned_positions.json
  def index
    @assigned_positions = AssignedPosition.all
    @assignments = Assignment.all
    @groups = Group.all  
     @assigned_position = AssignedPosition.new
     @positions = Position.all
  end

  # GET /assigned_positions/1
  # GET /assigned_positions/1.json
  def show
  end

  # GET /assigned_positions/new
  def new
    @assigned_position = AssignedPosition.new
  end

  # GET /assigned_positions/1/edit
  def edit
  end

  # POST /assigned_positions
  # POST /assigned_positions.json
  def create
    @assigned_position = AssignedPosition.new(assigned_position_params)

    respond_to do |format|
      if @assigned_position.save
        format.html { redirect_to assigned_positions_path, notice: 'Assigned position was successfully created.' }
        format.json { render :show, status: :created, location: @assigned_position }
      else
        format.html { render :new }
        format.json { render json: @assigned_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assigned_positions/1
  # PATCH/PUT /assigned_positions/1.json
  def update
    respond_to do |format|
      if @assigned_position.update(assigned_position_params)
        format.html { redirect_to @assigned_position, notice: 'Assigned position was successfully updated.' }
        format.json { render :show, status: :ok, location: @assigned_position }
      else
        format.html { render :edit }
        format.json { render json: @assigned_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assigned_positions/1
  # DELETE /assigned_positions/1.json
  def destroy
    @assigned_position.destroy
    respond_to do |format|
      format.html { redirect_to assigned_positions_url, notice: 'Assigned position was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assigned_position
      @assigned_position = AssignedPosition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assigned_position_params
      params.require(:assigned_position).permit(:user_id, :position_id)
    end
end
