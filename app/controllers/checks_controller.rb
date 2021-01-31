class ChecksController < ApplicationController
    before_action :set_order, only: [:show, :edit, :update, :destroy]
    # before_action :check_string, only: [:create, :update]

  def index
    @checks = Check.all
  end
  
  def new
    @check = Check.new
  end

  # test
  def create
    @check = Check.new(prefecture_ids_params)
    if @check.save
        redirect_to root_url, notice: 'Create new check'
    else
        render :new
    end
  end
  # test ends here

  def edit

  end

  def update
    if @check.update(update_prefecture_ids_params)
        flash[:success] = 'Success to update!'
        redirect_to root_url
    else
        render 'new'
    end
  end

  private
    def set_order
        @check = Check.find(params[:id])
    end

    # def prefecture_name_params
    #     # params.permit(:user_id, prefecture_name: [])
    #     params.permit(:user_id, prefecture_name: [])
    # end

    def check_string
        # params[:check][:prefecture_name] = params[:check][:prefecture_name].join("/") # to string
        params[:prefecture_name] = params[:prefecture_name].join("/") # to string
    end

    # test
    def prefecture_ids_params
        # create時、.requireを入れるとどうしてもエラーになってしまう
        params.permit(:user_id, prefecture_ids: [])
    end

    def update_prefecture_ids_params
        # やはりupdate時は.requireを付けないと内容が更新されない
        params.require(:check).permit(:user_id, prefecture_ids: [])
    end
end
