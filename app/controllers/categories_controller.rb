class CategoriesController < ApplicationController
  def index
  end

  def show
    @category = Category.friendly.find(params[:id])
    @category_jobs = @category.jobs.where(status: true).order('created_at DESC').page(params[:page]).per(10)
  end
end
