class CaseAttachmentsController < ApplicationController
  before_action :set_case_attachment, only: [:show, :edit, :update, :destroy]

  # GET /case_attachments
  # GET /case_attachments.json
  def index
    @case_attachments = CaseAttachment.all
  end

  # GET /case_attachments/1
  # GET /case_attachments/1.json
  def show
  end

  # GET /case_attachments/new
  def new
    @case_attachment = CaseAttachment.new
  end

  # GET /case_attachments/1/edit
  def edit
  end

  # POST /case_attachments
  # POST /case_attachments.json
  def create
    @case_attachment = CaseAttachment.new(case_attachment_params)

    respond_to do |format|
      if @case_attachment.save
        format.html { redirect_to @case_attachment, notice: 'Case attachment was successfully created.' }
        format.json { render :show, status: :created, location: @case_attachment }
      else
        format.html { render :new }
        format.json { render json: @case_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /case_attachments/1
  # PATCH/PUT /case_attachments/1.json
  def update
    respond_to do |format|
      if @case_attachment.update(case_attachment_params)
        format.html { redirect_to @case_attachment, notice: 'Case attachment was successfully updated.' }
        format.json { render :show, status: :ok, location: @case_attachment }
      else
        format.html { render :edit }
        format.json { render json: @case_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /case_attachments/1
  # DELETE /case_attachments/1.json
  def destroy
    @case_attachment.destroy
    respond_to do |format|
      format.html { redirect_to case_attachments_url, notice: 'Case attachment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_case_attachment
      @case_attachment = CaseAttachment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def case_attachment_params
      params.require(:case_attachment).permit(:case_id, :photo)
    end
end
