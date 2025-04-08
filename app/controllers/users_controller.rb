class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_devices = @user.user_devices
    @devices = Device.all
  end

  def add_device
    @user = User.find(params[:id])
    @user_device = UserDevice.new(user: @user, device: Device.find(params[:device_id]))
    if @user_device.save
      redirect_to user_path(@user), notice: "デバイスを追加しました"
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :avatar, :header_image)
  end
end
