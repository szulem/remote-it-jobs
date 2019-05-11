class JobsController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
  before_action :set_all_categories, only: [:new, :edit]
  before_action :set_job, only: %i[show edit update destroy job_owner]
  before_action :job_owner, only: %i[edit update destroy]

  def index
    @jobs = Job.all.order('created_at DESC')
  end

  def show
    # @jobs = Job.all.order('created_at DESC').take(5)
    @jobs_category = @job.category.jobs.order('created_at DESC').take(6)
  end

  def new
    @job = Job.new
  end

  def create
    @job = current_user.jobs.new(job_params)
    if @job.save
      redirect_to @job
      flash[:success] = "Successfully added a new Job."
    else
      render 'new'
      flash[:error] = "You have to fill all required fields."
    end
  end

  def edit
  end

  def update
    if @job.update(job_params)
      redirect_to @job, notice: "The job was successfully updated."
    else
      render 'edit'
    end
  end

  def destroy
    @job.destroy
    redirect_to jobs_path, notice: "Your job offer was successfully destroyed."
  end

  private

  def job_params
    # params.require(:job).permit(:title, :category_id)
    params.require(:job).permit(:title, :description, :email, :url, :salary_from, :salary_to, :salary_per, :currency, :category_id, :company_name, :company_logo, :user_id)
  end

  def set_job
    @job = Job.friendly.find(params[:id])
  end

  def set_all_categories
    @categories = Category.all
  end

  def job_owner
    unless @job.user_id == current_user.id
      flash[:alert] = "You don't have permission to edit this offer."
      redirect_to root_path
    end
  end

end
