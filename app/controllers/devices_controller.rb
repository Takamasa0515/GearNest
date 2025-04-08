class DevicesController < ApplicationController
  def new
    @device = Device.new
  end

  def create
    @device = Device.new(device_params)
    if @device.save
      current_user.user_devices.create(device: @device)
      redirect_to user_path(current_user), notice: "デバイスを追加しました"
    else
      render :new
    end
  end

  private

  def device_params
    params.require(:device).permit(:name, :category, :maker, :price, :image)
  end
end
