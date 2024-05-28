class Recruiter::JobsController < ApplicationController

  def index
    @recruiter_jobs = Recruiter::Job.all
  end

  def show
    @recruiter_job = Recruiter::Job.find(params[:id])
  end

  def create
    @recruiter_job = Recruiter::Job.create(post_params)
  end

  def update
    @recruiter_job = Recruiter::Job.find(params[:id])
    @recruiter_job.update(update_params)
  end

  def destroy
    Recruiter::Job.destroy(params[:id])
    head :ok
  end

  private
    def post_params
      params.permit(:title, :description, :start_date, :end_date, :skills, :status, :recruiter_id)
    end

    def update_params
      params.permit(:title, :description, :start_date, :end_date, :skills, :status)
    end
end
