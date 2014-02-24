class ReportContentsController < ApplicationController
  before_action :set_report_content, only: [:show, :edit, :update, :destroy]

  # GET /report_contents
  # GET /report_contents.json
  def index
    @report_contents = ReportContent.all
  end

  # GET /report_contents/1
  # GET /report_contents/1.json
  def show
  end

  # GET /report_contents/new
  def new
    @report_content = ReportContent.new
  end

  # GET /report_contents/1/edit
  def edit
  end

  # POST /report_contents
  # POST /report_contents.json
  def create
    @report_content = ReportContent.new(report_content_params)

    respond_to do |format|
      if @report_content.save
        format.html { redirect_to @report_content, notice: 'Report content was successfully created.' }
        format.json { render action: 'show', status: :created, location: @report_content }
      else
        format.html { render action: 'new' }
        format.json { render json: @report_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /report_contents/1
  # PATCH/PUT /report_contents/1.json
  def update
    respond_to do |format|
      if @report_content.update(report_content_params)
        format.html { redirect_to @report_content, notice: 'Report content was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @report_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /report_contents/1
  # DELETE /report_contents/1.json
  def destroy
    @report_content.destroy
    respond_to do |format|
      format.html { redirect_to report_contents_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_report_content
      @report_content = ReportContent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def report_content_params
      params.require(:report_content).permit(:content)
    end
end
