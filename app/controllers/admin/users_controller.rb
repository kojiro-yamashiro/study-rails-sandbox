class Admin::UsersController < ApplicationController

  def new
    # アカウント登録の新規
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to admin_users_path, notice: "ユーザー「#{@user.name}」を登録しました。"
    else
      render :new
    end
  end

  def edit
  end

  def show
  end

  def index
  end


  private

  def user_params
    # 名前、メールアドレス、アドミンフラグ、パスワード、パスワード確認のみ許可
    params.require(:user).permit(:name, :email, :admin, :password, :password_confirmation)
  end
end
