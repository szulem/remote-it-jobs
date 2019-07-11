class JobsController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
  before_action :set_all_categories, only: [:new, :edit]
  before_action :set_all_users
  before_action :set_job, only: %i[show edit update destroy job_owner]
  before_action :job_owner, only: %i[edit update destroy]

  def index
    @jobs = Job.where(status: true).order('created_at DESC').page(params[:page])
    @jobs_user = Job.where(status: true, user: current_user).order('created_at DESC').page(params[:page])
    @categories = Category.all.order('created_at ASC')
  end

  def show
    # @jobs = Job.all.order('created_at DESC').take(5)
    @jobs_category = @job.category.jobs.where(status: true).order('created_at DESC').take(11)
  end

  def new
    @job = Job.new
  end

  def create
    @job = current_user.jobs.new(job_params)
    if @job.save
      flash[:success] = "You've successfully added a new job. It will be activated after checking."
      redirect_to @job
    else
      flash[:error] = "You have to fill all required fields."
      render 'new'
    end
  end

  def edit
  end

  def update
    if @job.update(job_params)
      redirect_to @job, notice: "The job was successfully updated."
    else
      flash[:error] = "You have to fill all required fields."
      render 'edit'
    end
  end

  def destroy
    @job.destroy
    redirect_to jobs_path, notice: "Your job offer was successfully destroyed."
  end

  private

  def job_params
    params.require(:job).permit(:title, :description, :email, :url, :salary_from, :salary_to, :salary_per, :currency, :category_id, :company_name, :company_size, :company_logo, :status, :promo, :location_requirement, :activated_at, :user_id)
  end

  def set_job
    @job = Job.friendly.find(params[:id])
  end

  def set_all_categories
    @categories = Category.all
  end

  def set_all_users
    @users = User.all
  end

  def job_owner
    unless @job.user_id == current_user.id || current_user.admin?
      flash[:alert] = "You don't have permission to edit and destroy this offer."
      redirect_to root_path
    end
  end

end
