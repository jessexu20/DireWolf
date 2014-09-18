class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def current_apply
    Apply.find(session[:apply_id])
  rescue ActiveRecord::RecordNotFound
    apply=Apply.create
    session[:apply_id]=apply.id
    apply
  end
end
