class Admin::UsersController < AdminController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /partners
  # GET /partners.json
  def index
    @users = User.all
  end

  # GET /partners/1
  # GET /partners/1.json
  def show
  end

  # GET /partners/new
  def new
    @user = User.new
  end

  # GET /partners/1/edit
  def edit
  end

  # POST /partners
  # POST /partners.json
  def create

    generate_password = Devise.friendly_token.first(8)

    if params[:user][:password].blank? && params[:user][:password_confirmation].blank?
      params[:user][:password] = generate_password
      params[:user][:password_confirmation] = generate_password
    end
    @user = User.new(user_params)

    puts "################################################################################"
    puts "################################################################################"
    puts "################################################################################"
    puts generate_password
    puts "################################################################################"
    puts "################################################################################"
    puts "################################################################################"

    respond_to do |format|
      if @user.save
        format.html { redirect_to admin_users_path, notice: "Cliente (#{@user.name}), foi cadastrado com sucesso!" }
        format.json { render :show, status: :created, location: [:admin, @user] }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /partners/1
  # PATCH/PUT /partners/1.json
  def update
    respond_to do |format|
      if @user.update(admin_params)
        format.html { redirect_to admin_users_path, notice: "Administrador (#{@user.name}), foi alterado com sucesso!" }
        format.json { render :show, status: :ok, location: [:admin, @user] }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /partners/1
  # DELETE /partners/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to admin_users_url, notice: "Administrador (#{@user.name}), foi excluido com sucesso!" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :usertype, :company, :document, :address, :number, :neighborhood, :city, :state)
    end
end
