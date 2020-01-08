class Admin::FashionsController < Admin::BaseController
  before_action :set_admin_fashion, only: [:show, :edit, :update, :destroy]

  # GET /admin/fashions
  # GET /admin/fashions.json
  def index
    @admin_fashions = Admin::Fashion.all
  end

  # GET /admin/fashions/1
  # GET /admin/fashions/1.json
  def show
  end

  # GET /admin/fashions/new
  def new
    @admin_fashion = Admin::Fashion.new
  end

  # GET /admin/fashions/1/edit
  def edit
  end

  # POST /admin/fashions
  # POST /admin/fashions.json
  def create
    @admin_fashion = Admin::Fashion.new(admin_fashion_params)

    respond_to do |format|
      if @admin_fashion.save
        format.html { redirect_to @admin_fashion, notice: 'Fashion was successfully created.' }
        format.json { render :show, status: :created, location: @admin_fashion }
      else
        format.html { render :new }
        format.json { render json: @admin_fashion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/fashions/1
  # PATCH/PUT /admin/fashions/1.json
  def update
    respond_to do |format|
      if @admin_fashion.update(admin_fashion_params)
        format.html { redirect_to @admin_fashion, notice: 'Fashion was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_fashion }
      else
        format.html { render :edit }
        format.json { render json: @admin_fashion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/fashions/1
  # DELETE /admin/fashions/1.json
  def destroy
    @admin_fashion.destroy
    respond_to do |format|
      format.html { redirect_to admin_fashions_url, notice: 'Fashion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_fashion
      @admin_fashion = Admin::Fashion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_fashion_params
      params.require(:admin_fashion).permit(:name, :description, :order, :show, :active, :photo)
    end
end
