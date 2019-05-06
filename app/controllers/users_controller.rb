class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @jobs = @user.jobs.order('created_at DESC')
  end
end
