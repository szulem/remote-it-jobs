class CategoriesController < ApplicationController
  def index
  end

  def show
    @category = Category.friendly.find(params[:id])
    @category_jobs = @category.jobs.order('created_at DESC')
  end
end
