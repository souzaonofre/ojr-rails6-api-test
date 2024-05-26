class RecruitersController < ApplicationController
  
  def index
    @recruiters = Recruiter.all
  end

  def show
    @recruiter = Recruiter.find(params[:id])
  end

  def create
    @recruiter = Recruiter.create(post_params)
  end

  def update
    @recruiter = Recruiter.find(params[:id])
    @recruiter.update(update_params)
  end

  def destroy
    render json: { error: 'can´t destroy yourself' }, status: :forbidden  if params[:id] === @curr_user.id
    Recruiter.destroy(params[:id])
    head :ok
  end

  private
    def post_params
      params.permit(:name, :email)
    end

    def update_params
      params.permit(:name)
    end
end
