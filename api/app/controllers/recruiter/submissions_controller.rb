class Recruiter::SubmissionsController < ApplicationController

  def index
    @recruiter_submissions = Recruiter::Submission.all
  end

  def show
    @recruiter_submission = Recruiter::Submission.find(params[:id])
  end

  def create
    @recruiter_submission = Recruiter::Submission.create(post_params)
  end

  def update
    @recruiter_submission = Recruiter::Submission.find(params[:id])
    @recruiter_submission.update(update_params)
  end

  def destroy
    Recruiter::Submission.destroy(params[:id])
    head :ok
  end

  private
    def post_params
      params.permit(:name, :email, :mobile_phone, :resume, :recruiter_job_id)
    end

    def update_params
      params.permit(:email, :mobile_phone, :resume)
    end

end
