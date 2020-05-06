class Admin::UsersController < ApplicationController
  before_action :set_user, only: [:edit, :show, :destroy, :update]
  
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to admin_users_path, notice: "ユーザー「#{@user.name}」を登録しました。"
    else
      logger.warn "エラーが発生。#{@user.errors.full_messages}"
      render :new
    end
  end

  def edit
    # do nothing
  end

  def show
    # do nothing
  end

  def destroy
    @user&.destroy
    redirect_to admin_users_url, notice: "ユーザー「#{@user.name}」を削除しました。"
  end

  def update
    if @user&.update(user_params)
      redirect_to admin_user_detail_path @user
    else
      render :new
    end
  end



  private

  def user_params
    # 名前、メールアドレス、アドミンフラグ、パスワード、パスワード確認のみ許可
    params.require(:user).permit(:name, :email, :admin, :password, :password_confirmation)
  end

  def set_user
    @user = User.find_by(id: params[:id])
  end
end
