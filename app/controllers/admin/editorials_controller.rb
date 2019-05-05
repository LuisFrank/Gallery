class Admin::EditorialsController < Admin::BaseController
  before_action :set_admin_editorial, only: [:show, :edit, :update, :destroy]

  # GET /admin/editorials
  # GET /admin/editorials.json
  def index
    @admin_editorials = Admin::Editorial.all
  end

  # GET /admin/editorials/1
  # GET /admin/editorials/1.json
  def show
  end

  # GET /admin/editorials/new
  def new
    @admin_editorial = Admin::Editorial.new
  end

  # GET /admin/editorials/1/edit
  def edit
  end

  # POST /admin/editorials
  # POST /admin/editorials.json
  def create
    @admin_editorial = Admin::Editorial.new(admin_editorial_params)

    respond_to do |format|
      if @admin_editorial.save
        format.html { redirect_to @admin_editorial, notice: 'Editorial was successfully created.' }
        format.json { render :show, status: :created, location: @admin_editorial }
      else
        format.html { render :new }
        format.json { render json: @admin_editorial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/editorials/1
  # PATCH/PUT /admin/editorials/1.json
  def update
    respond_to do |format|
      if @admin_editorial.update(admin_editorial_params)
        format.html { redirect_to @admin_editorial, notice: 'Editorial was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_editorial }
      else
        format.html { render :edit }
        format.json { render json: @admin_editorial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/editorials/1
  # DELETE /admin/editorials/1.json
  def destroy
    @admin_editorial.destroy
    respond_to do |format|
      format.html { redirect_to admin_editorials_url, notice: 'Editorial was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_editorial
      @admin_editorial = Admin::Editorial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_editorial_params
      params.require(:admin_editorial).permit(:name, :description, :show, :order)
    end
end
