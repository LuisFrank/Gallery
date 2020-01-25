class Admin::BiographiesController  < Admin::BaseController
  before_action :set_admin_biography, only: [:show, :edit, :update, :destroy]

  # GET /admin/biographies
  # GET /admin/biographies.json
  def index
    @admin_biographies = Admin::Biography.all
  end

  # GET /admin/biographies/1
  # GET /admin/biographies/1.json
  def show
  end

  # GET /admin/biographies/new
  def new
    @admin_biography = Admin::Biography.new
  end

  # GET /admin/biographies/1/edit
  def edit
  end

  # POST /admin/biographies
  # POST /admin/biographies.json
  def create
    @admin_biography = Admin::Biography.new(admin_biography_params)

    respond_to do |format|
      if @admin_biography.save
        format.html { redirect_to @admin_biography, notice: 'Biography was successfully created.' }
        format.json { render :show, status: :created, location: @admin_biography }
      else
        format.html { render :new }
        format.json { render json: @admin_biography.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/biographies/1
  # PATCH/PUT /admin/biographies/1.json
  def update
    respond_to do |format|
      if @admin_biography.update(admin_biography_params)
        format.html { redirect_to @admin_biography, notice: 'Biography was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_biography }
      else
        format.html { render :edit }
        format.json { render json: @admin_biography.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/biographies/1
  # DELETE /admin/biographies/1.json
  def destroy
    @admin_biography.destroy
    respond_to do |format|
      format.html { redirect_to admin_biographies_url, notice: 'Biography was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_biography
      @admin_biography = Admin::Biography.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_biography_params
      params.require(:admin_biography).permit(:message, :visible)
    end
end
