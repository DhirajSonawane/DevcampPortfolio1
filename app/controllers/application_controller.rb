class ApplicationController < ActionController::Base
  include DeviseWhitelist

  before_action :set_sorce

  def set_sorce
    session[:source] = params[:q] if params[:q]
  end
end
