class RunsController < ApplicationController
  before_action :set_run, only: [:show, :edit, :update, :destroy]
    before_action :correct_user,   only: :destroy

  # GET /runs
  # GET /runs.json
  def index
    @runs = Run.all
  end

  # GET /runs/1
  # GET /runs/1.json
  def show
  end

  # GET /runs/new
  def new
    @run = Run.new
  end

  # GET /runs/1/edit
  def edit
  end

  # POST /runs
  # POST /runs.json
  def create
    @user = User.find(params[:user_id])
    @run = @user.runs.create(run_params)
    

    respond_to do |format|
      if @run.save
        format.html { redirect_to @user, notice: 'Run was successfully created.' }
        format.json { render :show, status: :created, location: @run }
      else


        format.html { redirect_to request.referrer || root_url, alert: 'distance cant be empty .' }
        
        
      end
    end
  end

  # PATCH/PUT /runs/1
  # PATCH/PUT /runs/1.json
  def update
    respond_to do |format|
      if @run.update(run_params)
        format.html { redirect_to @run, notice: 'Run was successfully updated.' }
        format.json { render :show, status: :ok, location: @run }
      else
        format.html { render :edit }
        format.json { render json: @run.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /runs/1
  # DELETE /runs/1.json
  def destroy
    @run.destroy
    respond_to do |format|
      format.html { redirect_to request.referrer || root_url, notice: 'Run was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_run
      @run = Run.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def run_params
      params.require(:run).permit(:distance, :initTime, :endTime, :runDate)
    end
    def correct_user
      @run = current_user.runs.find_by(id: params[:id])
      redirect_to root_url if @run.nil?
    end
end
