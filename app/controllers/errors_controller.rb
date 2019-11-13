class ErrorsController < ApplicationController

  def not_found
    render status: 404
    render formats: [:xml, :html, :erb, :haml]
  end

  def unprocessable_entity
    render status: 422
  end

  def internal_server_error
    render status: 500
    render layout: false
    render formats: [:xml, :html, :erb, :haml]
  end

end