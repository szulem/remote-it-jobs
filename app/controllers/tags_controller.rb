class TagsController < ApplicationController

  def index
    @tags = ActsAsTaggableOn::Tag.all
  end

  def show
    @tag =  ActsAsTaggableOn::Tag.friendly.find(params[:id])
    @tagged_jobs = Job.tagged_with(@tag.name)
  end

end