class SessionsController < ApplicationController
  def create
    response = request.env['omniauth.auth']
    @user_info = request.env['omniauth.auth']['user_info']
    @user ||= User.new
    if params[:provider] == "twitter"
      @user_info[:first_name], @user_info[:last_name] = @user_info['name'].split(' ')
    end
    render
  end
end
