class Users::AccountsController < ApplicationController
  before_action :authenticate_user!

  def edit
  end

  def update
    if current_user.update_with_password(account_update_params)
      bypass_sign_in(current_user) # パスワード変更後に自動ログイン
      redirect_to root_path, notice: 'アカウント情報を更新しました'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def account_update_params
    params.require(:user).permit(:email, :password, :password_confirmation, :current_password)
  end
end
