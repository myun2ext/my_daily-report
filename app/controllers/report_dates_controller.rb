class ReportDatesController < ApplicationController
  before_action :set_report_date, only: [:show, :edit, :update, :destroy]

  # GET /report_dates
  # GET /report_dates.json
  def index
    @report_dates = ReportDate.all
  end

  # GET /report_dates/1
  # GET /report_dates/1.json
  def show
  end

  # GET /report_dates/new
  def new
    @report_date = ReportDate.new
  end

  # GET /report_dates/1/edit
  def edit
  end

  # POST /report_dates
  # POST /report_dates.json
  def create
    @report_date = ReportDate.new(report_date_params)

    respond_to do |format|
      if @report_date.save
        format.html { redirect_to @report_date, notice: 'Report date was successfully created.' }
        format.json { render action: 'show', status: :created, location: @report_date }
      else
        format.html { render action: 'new' }
        format.json { render json: @report_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /report_dates/1
  # PATCH/PUT /report_dates/1.json
  def update
    respond_to do |format|
      if @report_date.update(report_date_params)
        format.html { redirect_to @report_date, notice: 'Report date was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @report_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /report_dates/1
  # DELETE /report_dates/1.json
  def destroy
    @report_date.destroy
    respond_to do |format|
      format.html { redirect_to report_dates_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_report_date
      @report_date = ReportDate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def report_date_params
      params.require(:report_date).permit(:date)
    end
end
