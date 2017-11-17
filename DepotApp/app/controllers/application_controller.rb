class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def initialize_session
    session[:store_index_count] ||= 0
  end 
end
