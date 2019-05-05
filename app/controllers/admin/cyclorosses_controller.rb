class Admin::CyclorossesController < Admin::BaseController
    before_action :set_cycloross, only: [:show, :edit, :update, :destroy]

    # GET /cyclorosses
  # GET /cyclorosses.json
  def index
    @cyclorosses = Cycloross.all
  end

  # GET /cyclorosses/1
  # GET /cyclorosses/1.json
  def show
  end

  # GET /cyclorosses/new
  def new
    @cycloross = Cycloross.new
  end

  # GET /cyclorosses/1/edit
  def edit
  end

  # POST /cyclorosses
  # POST /cyclorosses.json
  def create
    @cycloross = Cycloross.new(cycloross_params)

    respond_to do |format|
      if @cycloross.save
        format.html { redirect_to admin_cyclorosses_url, notice: 'Cycloross was successfully created.' }
        format.json { render :show, status: :created, location: @cycloross }
      else
        format.html { render :new }
        format.json { render json: @cycloross.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cyclorosses/1
  # PATCH/PUT /cyclorosses/1.json
  def update
    respond_to do |format|
      if @cycloross.update(cycloross_params)
        format.html { redirect_to admin_cyclorosses_url, notice: 'Cycloross was successfully updated.' }
        format.json { render :show, status: :ok, location: @cycloross }
      else
        format.html { render :edit }
        format.json { render json: @cycloross.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cyclorosses/1
  # DELETE /cyclorosses/1.json
  def destroy
    @cycloross.destroy
    respond_to do |format|
      format.html { redirect_to admin_cyclorosses_url, notice: 'Cycloross was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cycloross
      @cycloross = Cycloross.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cycloross_params
      params.require(:cycloross).permit(:name, :description,show, :photo)
    end
end
