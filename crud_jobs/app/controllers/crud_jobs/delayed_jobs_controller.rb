require_dependency "crud_jobs/application_controller"

module CrudJobs
  class DelayedJobsController < ApplicationController
    before_action :set_delayed_job, only: [:show, :edit, :update, :destroy]

    # GET /delayed_jobs
    def index
      @delayed_jobs = CrudJobs::DelayedJob.all
    end

    # GET /delayed_jobs/1
    def show
    end

    # GET /delayed_jobs/new
    def new
      @delayed_job = CrudJobs::DelayedJob.new
    end

    # GET /delayed_jobs/1/edit
    def edit
    end

    # POST /delayed_jobs
    def create
      @delayed_job = CrudJobs::DelayedJob.new(delayed_job_params)

      if @delayed_job.save
        redirect_to @delayed_job, notice: 'Delayed job was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /delayed_jobs/1
    def update
      if @delayed_job.update(delayed_job_params)
        redirect_to @delayed_job, notice: 'Delayed job was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /delayed_jobs/1
    def destroy
      @delayed_job.destroy
      redirect_to delayed_jobs_url, notice: 'Delayed job was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_delayed_job
        @delayed_job = CrudJobs::DelayedJob.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def delayed_job_params
        params.fetch(:delayed_job, {})
      end
  end
end
