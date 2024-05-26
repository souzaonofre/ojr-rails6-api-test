class Recruiter::Job::JobsController < ApplicationController

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
    render json: { error: 'can´t destroy yourself' }, status: :forbidden  if params[:id] === @curr_user.id
    Recruiter::Job.destroy(params[:id])
    head :ok
  end

  private
    def post_params
      params.permit(:title, :description, :recruiter_id)
    end

    def update_params
      params.permit(:title, :description)
    end
end
