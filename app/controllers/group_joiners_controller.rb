class GroupJoinersController < ApplicationController
  before_action :set_group_joiner, only: %i[ show edit update destroy ]

  # GET /group_joiners or /group_joiners.json
  def index
    @group_joiners = GroupJoiner.all
  end

  # GET /group_joiners/1 or /group_joiners/1.json
  def show
  end

  # GET /group_joiners/new
  def new
    @group_joiner = GroupJoiner.new
  end

  # GET /group_joiners/1/edit
  def edit
  end

  # POST /group_joiners or /group_joiners.json
  def create
    @group_joiner = GroupJoiner.new(group_joiner_params)

    respond_to do |format|
      if @group_joiner.save
        format.html { redirect_to group_joiner_url(@group_joiner), notice: "Group joiner was successfully created." }
        format.json { render :show, status: :created, location: @group_joiner }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @group_joiner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /group_joiners/1 or /group_joiners/1.json
  def update
    respond_to do |format|
      if @group_joiner.update(group_joiner_params)
        format.html { redirect_to group_joiner_url(@group_joiner), notice: "Group joiner was successfully updated." }
        format.json { render :show, status: :ok, location: @group_joiner }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @group_joiner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_joiners/1 or /group_joiners/1.json
  def destroy
    @group_joiner.destroy

    respond_to do |format|
      format.html { redirect_to group_joiners_url, notice: "Group joiner was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_joiner
      @group_joiner = GroupJoiner.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def group_joiner_params
      params.require(:group_joiner).permit(:isAdmin?, :user_id, :group_id)
    end
end
