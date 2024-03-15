class MicropigsController < ApplicationController
  before_action :set_micropig, only: %i[ show edit update destroy ]

  # GET /micropigs or /micropigs.json
  def index
    @micropigs = Micropig.all
  end

  # GET /micropigs/1 or /micropigs/1.json
  def show
  end

  # GET /micropigs/new
  def new
    @micropig = Micropig.new(age: 1, notes: "Really a piglet")
  end

  # GET /micropigs/1/edit
  def edit
  end

  # POST /micropigs or /micropigs.json
  def create
    @micropig = Micropig.new(micropig_params)

    respond_to do |format|
      if @micropig.save
        format.html { redirect_to micropig_url(@micropig), notice: "Micropig was successfully created." }
        format.json { render :show, status: :created, location: @micropig }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @micropig.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /micropigs/1 or /micropigs/1.json
  def update
    respond_to do |format|
      if @micropig.update(micropig_params)
        format.html { redirect_to micropig_url(@micropig), notice: "Micropig was successfully updated." }
        format.json { render :show, status: :ok, location: @micropig }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @micropig.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /micropigs/1 or /micropigs/1.json
  def destroy
    @micropig.destroy!

    respond_to do |format|
      format.html { redirect_to micropigs_url, notice: "Micropig was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_micropig
      @micropig = Micropig.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def micropig_params
      params.require(:micropig).permit(:name, :age, :notes)
    end
end
