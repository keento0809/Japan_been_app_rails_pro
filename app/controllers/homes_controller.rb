class HomesController < ApplicationController
    before_action :set_search
    # before_action :set_order, only: :index

  def index
    if params[:search].present?
        @prefectures = Prefecture.where('name LIKE(?)', "%#{params[:search]}%")
    else
        @prefectures = Prefecture.all
        # @prefectures = "bbb"
    end
  end

  def set_search
    @search = Prefecture.ransack(params[:q])
    @search_Prefectures = @search.result
  end

  def set_order
    @check = Check.find(user_id: 2)
    # @user = User.find(id: check.user_id)
  end
end
