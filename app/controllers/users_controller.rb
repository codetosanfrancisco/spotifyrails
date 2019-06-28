class UsersController < Devise::RegistrationsController

  def new
    @user = User.new
  end

  def create
    user = User.create(:email => params[:user][:email],:password => params[:user][:password],:role => 0)
    redirect_to new_user_session_path
  end
end
