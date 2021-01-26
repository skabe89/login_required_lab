class SessionsController < ApplicationController

  before_action :require_login
  skip_before_action :require_login, only: [:destroy]

  def new
  end

  def create
    # if params[:name].nil? || params[:name].empty?
    #   redirect_to '/new'
    # else
      session[:name] = params[:name]
    # end
  end

  def destroy
    session.delete :name
  end

  private

  def require_login
    if params[:name].nil? || params[:name].empty?
      redirect_to '/new'
    end
  end

end
