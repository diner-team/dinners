class SessionsController < ApplicationContoller

  def new
    
  end

  def create
    @user = User.find_by(username: params[:username], password: params[:passwod])
    if @user
      session[:user_id] = @user_id
      flash[:notice] = "登陆成功"
      redirect_to root_path
    else
      flash[:notice] = "用户名或密码不正确"
      render action: :new
    end
  end
  
  def destroy
    session[:user_id] = nil
    flash[:notice] = "退出成功"  
    redirect_to root_path
  end
end