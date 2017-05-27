class UsersController < ApplicationController

  def show
		unless @user = User.where(id: params[:id]).first
			render "users/show"
			render "public/404.html"
		end
	end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Добро пожаловать!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def index
  	@users = User.all
  end

  def update
		@user = User.find(params[:id])
		@user.update_attributes(user_params)
		if @user.errors.empty?
			redirect_to user_path(@user)
		else
			render "edit"
		end
	end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end