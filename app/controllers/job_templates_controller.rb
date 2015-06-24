class JobTemplatesController < ApplicationController
  before_action :set_job_template, only: [:show, :edit, :update, :destroy]

  # GET /job_templates
  # GET /job_templates.json
  def index
    @job_templates = JobTemplate.all
  end

  # GET /job_templates/1
  # GET /job_templates/1.json
  def show
  end

  # GET /job_templates/new
  def new
    @job_template = JobTemplate.new
  end

  # GET /job_templates/1/edit
  def edit
  end

  # POST /job_templates
  # POST /job_templates.json
  def create
    @job_template = JobTemplate.new(job_template_params)

    respond_to do |format|
      if @job_template.save
        format.html { redirect_to @job_template, notice: 'Job template was successfully created.' }
        format.json { render :show, status: :created, location: @job_template }
      else
        format.html { render :new }
        format.json { render json: @job_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_templates/1
  # PATCH/PUT /job_templates/1.json
  def update
    respond_to do |format|
      if @job_template.update(job_template_params)
        format.html { redirect_to @job_template, notice: 'Job template was successfully updated.' }
        format.json { render :show, status: :ok, location: @job_template }
      else
        format.html { render :edit }
        format.json { render json: @job_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_templates/1
  # DELETE /job_templates/1.json
  def destroy
    @job_template.destroy
    respond_to do |format|
      format.html { redirect_to job_templates_url, notice: 'Job template was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_template
      @job_template = JobTemplate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_template_params
      params.require(:job_template).permit(:template_name, :job_description, :job_type)
    end
end
