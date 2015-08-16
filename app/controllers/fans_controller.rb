class FansController < ApplicationController
  def new
  end

  def create
  end

  def destroy
  end

  private

  def fan_params
    params.require(:fan).permit(:name, user_attributes: [ :id, :email, :password ])
  end

end
