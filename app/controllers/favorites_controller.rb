class FavoritesController < ApplicationController
  def create
      favorite = current_user.favorites.create(main_id: params[:main_id])
      redirect_to mains_url, notice: "#{favorite.main.user.name}さんのブログをお気に入り登録しました"
    end

  def destroy
    favorite = current_user.favorites.find_by(id: params[:id]).destroy
    redirect_to mains_url, notice: "#{favorite.main.user.name}さんのブログをお気に入り解除しました"
  end
end
