class TasksJoinersController < ApplicationController
  before_action :set_tasks_joiner, only: %i[ show edit update destroy ]

  # GET /tasks_joiners or /tasks_joiners.json
  def index
    @tasks_joiners = TasksJoiner.all
  end

  # GET /tasks_joiners/1 or /tasks_joiners/1.json
  def show
  end

  # GET /tasks_joiners/new
  def new
    @tasks_joiner = TasksJoiner.new
  end

  # GET /tasks_joiners/1/edit
  def edit
  end

  # POST /tasks_joiners or /tasks_joiners.json
  def create
    @tasks_joiner = TasksJoiner.new(tasks_joiner_params)

    respond_to do |format|
      if @tasks_joiner.save
        format.html { redirect_to tasks_joiner_url(@tasks_joiner), notice: "Tasks joiner was successfully created." }
        format.json { render :show, status: :created, location: @tasks_joiner }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tasks_joiner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks_joiners/1 or /tasks_joiners/1.json
  def update
    respond_to do |format|
      if @tasks_joiner.update(tasks_joiner_params)
        format.html { redirect_to tasks_joiner_url(@tasks_joiner), notice: "Tasks joiner was successfully updated." }
        format.json { render :show, status: :ok, location: @tasks_joiner }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tasks_joiner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks_joiners/1 or /tasks_joiners/1.json
  def destroy
    @tasks_joiner.destroy

    respond_to do |format|
      format.html { redirect_to tasks_joiners_url, notice: "Tasks joiner was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tasks_joiner
      @tasks_joiner = TasksJoiner.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tasks_joiner_params
      params.require(:tasks_joiner).permit(:group_id, :task_id)
    end
end
