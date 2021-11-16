module SetSource

  extend ActiveSupport::Concern

  included do
    before_action :set_sorce
  end
  
  def set_sorce
    session[:source] = params[:q] if params[:q]
  end

end