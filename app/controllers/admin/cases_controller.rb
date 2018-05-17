class Admin::CasesController < ApplicationController
  before_action :set_case, only: [:show, :edit, :update, :destroy]

  # GET /cases
  # GET /cases.json
  def index
    @cases = Case.all
  end

  # GET /cases/1
  # GET /cases/1.json
  def show
    @case_attachments = @case.case_attachments.all
  end

  # GET /cases/new
  def new
    @case = Case.new
    @case_attachment = @case.case_attachments.build
  end

  # GET /cases/1/edit
  def edit
  end

  # POST /cases
  # POST /cases.json
  def create
    @case = Case.new(case_params)

    respond_to do |format|
      if @case.save
        params[:case_attachments]['photo'].each do |a|
          @case_attachment = @case.case_attachments.create!(:photo => a, :case_id => @case.id)
       end
        format.html { redirect_to admin_cases_path, notice: "Caso Clínico (#{@case.title}), cadastrado com sucesso!" }
        format.json { render :show, status: :created, location: [:admin, @case] }
      else
        format.html { render :new }
        format.json { render json: @case.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cases/1
  # PATCH/PUT /cases/1.json
  def update
    respond_to do |format|
      if @case.update(case_params)
        params[:case_attachments]['photo'].each do |a|
          @case_attachment = @case.case_attachments.create!(:photo => a, :case_id => @case.id)
       end
        format.html { redirect_to admin_cases_path, notice: "Caso Clínico (#{@case.title}), alterado com sucesso!" }
        format.json { render :show, status: :ok, location: [:admin, @case] }
      else
        format.html { render :edit }
        format.json { render json: @case.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cases/1
  # DELETE /cases/1.json
  def destroy
    @case.destroy
    respond_to do |format|
      format.html { redirect_to admin_cases_url, notice: 'Case was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_case
      @case = Case.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def case_params
      params.require(:case).permit(:title, :content, :status, :category, case_attachments_attributes: [:id, :case_id, :photo])
    end
end
