class UsersController < ApplicationController
    # before_actionはコントローラに記述する
    # before_action :user_params
    skip_before_action :logged_in_user, only: [:new]
    # loggged_in_user：ログイン済みユーザーか否かを確認
    before_action :logged_in_user, only: [:index, :edit, :update, :destory]
    # correct_user：正しいユーザーか確認
    before_action :correct_user, only: [:edit, :update]
    # before_action :admin_user, only: :destroy


  def index
    @users = User.all.search(params[:search])
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
        log_in(@user)
        flash[:success] = 'Success!'
        redirect_to root_path
    else
        flash[:danger] = 'Failed!'
        render :new
        # = render action: :new
        # 動いたアクションとは別のアクションのテンプレートを表示させる
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    if @user.update(user_params)
        flash[:success] = "Profile updated!"
        redirect_to root_url
    else
        render 'edit'
    end
  end

#   def log_in(user)
#     session[:user_id] = user.id
#   end


  private

    # Userのストロングパラメーター
    # ストロングパラメーターはユーザー登録画面からPOSTされた情報のセキュリティのために実施。
    def user_params
        params.require(:user).permit(:name, :email, :password)
        # params.permit(:name, :email, :password_digest)
    end

    # 正しいユーザーかどうか確認
    def correct_user
        @user = User.find(params[:id])
        # unless：current_user?がfalseの時にredirect_to(root_url)が実行される
        # current_user?()：引数に受け取ったユーザーがログイン中のユーザーと一致すればtrueを返す
        redirect_to(root_url) unless current_user?(@user)
    end

    # 管理者かどうか確認
    def admin_user
        redirect_to(root_url) unless current_user.admin?
    end
end
