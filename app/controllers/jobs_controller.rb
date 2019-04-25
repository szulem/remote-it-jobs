class JobsController < ApplicationController
	before_action :set_all_categories, only: [:new, :edit]

  def index
  	@jobs = Job.all.order('created_at DESC')
  end

  def show
  	@job = Job.find(params[:id])
  end

  def new
  	@job = Job.new
  end

  def create
  	@job = Job.new(job_params)
  	if @job.save
  		redirect_to @job, notice: "Successfully added new Job"
  	else
  		render 'new'
  	end
  end

  def edit
  	@job = Job.find(params[:id])
  end

  def update

  end

  private

  def job_params
  	# params.require(:job).permit(:title, :category_id)
  	params.require(:job).permit(:title, :description, :email, :url, :salary_from, :salary_to, :salary_per, :currency, :category_id)
  end

  def set_all_categories
  	@categories = Category.all
  end
end
