class UsersController < ApplicationController
  before_action :authenticate_user!, only: %i[show admin123 newjobs]

  def show
    @user = User.find(params[:id])
    @jobs = Job.where(user: current_user).order('created_at DESC').page(params[:page])
    @jobs_all = Job.all.order('created_at DESC')

    if @user != current_user
      flash[:error] = "You don't have permission to display this page."
      redirect_to root_path
    end
  end

  def admin123
    if current_user.admin?
      @users = User.all.order('created_at DESC')
    else
      redirect_to root_path
    end
  end

  def newjobs
    if current_user.admin?
      @jobs_inactive = Job.where(status: false).order('created_at DESC')
    else
      redirect_to root_path
    end
  end
  
end
