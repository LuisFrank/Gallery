class Admin::PortraitsController < Admin::BaseController
  before_action :set_admin_portrait, only: [:show, :edit, :update, :destroy]

  # GET /admin/portraits
  # GET /admin/portraits.json
  def index
    @admin_portraits = Admin::Portrait.all
  end

  # GET /admin/portraits/1
  # GET /admin/portraits/1.json
  def show
  end

  # GET /admin/portraits/new
  def new
    @admin_portrait = Admin::Portrait.new
  end

  # GET /admin/portraits/1/edit
  def edit
  end

  # POST /admin/portraits
  # POST /admin/portraits.json
  def create
    @admin_portrait = Admin::Portrait.new(admin_portrait_params)

    respond_to do |format|
      if @admin_portrait.save
        format.html { redirect_to @admin_portrait, notice: 'Portrait was successfully created.' }
        format.json { render :show, status: :created, location: @admin_portrait }
      else
        format.html { render :new }
        format.json { render json: @admin_portrait.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/portraits/1
  # PATCH/PUT /admin/portraits/1.json
  def update
    respond_to do |format|
      if @admin_portrait.update(admin_portrait_params)
        format.html { redirect_to @admin_portrait, notice: 'Portrait was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_portrait }
      else
        format.html { render :edit }
        format.json { render json: @admin_portrait.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/portraits/1
  # DELETE /admin/portraits/1.json
  def destroy
    @admin_portrait.destroy
    respond_to do |format|
      format.html { redirect_to admin_portraits_url, notice: 'Portrait was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_portrait
      @admin_portrait = Admin::Portrait.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_portrait_params
      params.require(:admin_portrait).permit(:name, :description, :show, :order)
    end
end
