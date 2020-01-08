class Admin::BeautiesController < Admin::BaseController
  before_action :set_admin_beauty, only: [:show, :edit, :update, :destroy]

  # GET /admin/beauties
  # GET /admin/beauties.json
  def index
    @admin_beauties = Admin::Beauty.all
  end

  # GET /admin/beauties/1
  # GET /admin/beauties/1.json
  def show
  end

  # GET /admin/beauties/new
  def new
    @admin_beauty = Admin::Beauty.new
  end

  # GET /admin/beauties/1/edit
  def edit
  end

  # POST /admin/beauties
  # POST /admin/beauties.json
  def create
    @admin_beauty = Admin::Beauty.new(admin_beauty_params)

    respond_to do |format|
      if @admin_beauty.save
        format.html { redirect_to @admin_beauty, notice: 'Beauty was successfully created.' }
        format.json { render :show, status: :created, location: @admin_beauty }
      else
        format.html { render :new }
        format.json { render json: @admin_beauty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/beauties/1
  # PATCH/PUT /admin/beauties/1.json
  def update
    respond_to do |format|
      if @admin_beauty.update(admin_beauty_params)
        format.html { redirect_to @admin_beauty, notice: 'Beauty was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_beauty }
      else
        format.html { render :edit }
        format.json { render json: @admin_beauty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/beauties/1
  # DELETE /admin/beauties/1.json
  def destroy
    @admin_beauty.destroy
    respond_to do |format|
      format.html { redirect_to admin_beauties_url, notice: 'Beauty was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_beauty
      @admin_beauty = Admin::Beauty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_beauty_params
      params.require(:admin_beauty).permit(:name, :description, :order, :show, :active, :photo)

    end
end
