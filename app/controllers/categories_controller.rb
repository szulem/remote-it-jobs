class CategoriesController < ApplicationController
  def index
  end

  def show
    @category = Category.find_by(name: params[:name])
    @category_jobs = @category.jobs.order('created_at DESC')
  end
end
