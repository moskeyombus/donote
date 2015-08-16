class ArtistsController < ApplicationController
  def new
  end

  def create
  end

  def destroy
  end

  def index
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :image, user_attributes: [ :id, :email, :password ])
  end
end
