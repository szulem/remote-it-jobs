class UsersController < ApplicationController
  before_action :authenticate_user!, only: %i[show]

  def show
    @user = User.find(params[:id])
    @jobs = @user.jobs.order('created_at DESC')
    @jobs_all = Job.all.order('created_at DESC')

    if @user != current_user
      flash[:error] = "You don't have permission to display this page."
      redirect_to root_path
    end

  end
end
