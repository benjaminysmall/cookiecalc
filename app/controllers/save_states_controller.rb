class SaveStatesController < ApplicationController
  before_action :set_save_state, only: %i[ show edit update destroy ]

  # GET /save_states or /save_states.json
  def index
    @save_states = SaveState.all
  end

  # GET /save_states/1 or /save_states/1.json
  def show
  end

  # GET /save_states/new
  def new
    @save_state = SaveState.new
  end

  # GET /save_states/1/edit
  def edit
  end

  # POST /save_states or /save_states.json
  def create
    @save_state = SaveState.new(save_state_params)

    respond_to do |format|
      if @save_state.save
        format.html { redirect_to save_state_url(@save_state), notice: "Save state was successfully created." }
        format.json { render :show, status: :created, location: @save_state }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @save_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /save_states/1 or /save_states/1.json
  def update
    respond_to do |format|
      if @save_state.update(save_state_params)
        format.html { redirect_to save_state_url(@save_state), notice: "Save state was successfully updated." }
        format.json { render :show, status: :ok, location: @save_state }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @save_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /save_states/1 or /save_states/1.json
  def destroy
    @save_state.destroy!

    respond_to do |format|
      format.html { redirect_to save_states_url, notice: "Save state was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_save_state
      @save_state = SaveState.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def save_state_params
      params.require(:save_state).permit(:encoded_string)
    end
end
