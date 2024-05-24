class RecruitersController < ApplicationController
  
  def index
    @recruiters = Recruiter.all
  end

  def show
    @recruiter = Recruiter.find(params[:id])
  end

  # def create
  #   @recruiter = Recruiter.create(post_params)
  # end

  def update
    @recruiter = Recruiter.find(params[:id])
    @recruiter.update(update_params)
  end

  # def destroy
  #   Recruiter.destroy(params[:id])
  #   head :ok
  # end

  def post_params
    params.permit(:name, :email)
  end

  def update_params
    params.permit(:name)
  end
end
