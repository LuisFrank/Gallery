class Admin::JewelriesController < Admin::BaseController
  before_action :set_admin_jewelry, only: [:show, :edit, :update, :destroy]

  # GET /admin/jewelries
  # GET /admin/jewelries.json
  def index
    @admin_jewelries = Admin::Jewelry.all
  end

  # GET /admin/jewelries/1
  # GET /admin/jewelries/1.json
  def show
  end

  # GET /admin/jewelries/new
  def new
    @admin_jewelry = Admin::Jewelry.new
  end

  # GET /admin/jewelries/1/edit
  def edit
  end

  # POST /admin/jewelries
  # POST /admin/jewelries.json
  def create
    @admin_jewelry = Admin::Jewelry.new(admin_jewelry_params)

    respond_to do |format|
      if @admin_jewelry.save
        format.html { redirect_to @admin_jewelry, notice: 'Jewelry was successfully created.' }
        format.json { render :show, status: :created, location: @admin_jewelry }
      else
        format.html { render :new }
        format.json { render json: @admin_jewelry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/jewelries/1
  # PATCH/PUT /admin/jewelries/1.json
  def update
    respond_to do |format|
      if @admin_jewelry.update(admin_jewelry_params)
        format.html { redirect_to @admin_jewelry, notice: 'Jewelry was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_jewelry }
      else
        format.html { render :edit }
        format.json { render json: @admin_jewelry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/jewelries/1
  # DELETE /admin/jewelries/1.json
  def destroy
    @admin_jewelry.destroy
    respond_to do |format|
      format.html { redirect_to admin_jewelries_url, notice: 'Jewelry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_jewelry
      @admin_jewelry = Admin::Jewelry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_jewelry_params
      params.require(:admin_jewelry).permit(:name, :description, :order, :show, :active, :photo)
    end
end
