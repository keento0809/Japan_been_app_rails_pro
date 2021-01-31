class PrefecturesController < ApplicationController
    before_action :set_search
    # before_action :set_memory_img, only: [:show, :edit]

  def index
    if params[:search]
        @prefectures = Prefecture.where('name LIKE(?)',"%#{params[:search]}%")
    else
        @prefectures = Prefecture.all
    end
  end

  def new
    @prefecture = Prefecture.new
  end

  def show
    @prefecture = Prefecture.find(params[:id])
    # @prefecture = Prefecture.find_by_name(prefecture.name).id
  end

  def edit
    @prefectures = Prefecture.all
  end

  def update
    @prefecture = Prefecture.find(params[:id])
    # @prefecture.save(prefecture_params)
    if @prefecture.update(prefecture_params)
        redirect_to root_url, notice: 'Success!'
    else
        flash[:alert] = 'Update failed!'
        render 'show'
    end
  end

  def update_been
    @prefecture = Prefecture.where(been_params)
    @prefecture.update(been_params)
    if params[:prefecture][beens] = '1'
        @prefecture.checkbox = true
    end
    flash[:success] = "Done."
    redirect_to root_url
  end

#   def set_memory_img
#     @prefecture = Prefecture.find_by(params[:id])
#     @memory_img = @prefecture.img
#   end


  def set_search
    @search = Prefecture.ransack(params[:q])
    @search_Prefectures = @search.result

    # 非同期通信テスト
    # unless params[:q].blank?
    #     render json: @prefectures.select("name").map { |e| e.name }.to_json
    # end
  end

#   def been_true
#     if @prefecture.update(been_params)
#   end

  private
    def prefecture_params
        # params.require(:prefecture).permit(:img, :comment)
        params.require(:prefecture).permit(:img, :comment)
    end

    def been_params
        params.permit(beens: [])
    end
    # def been_params
    #     params.permit(:prefecture_ids[], :authenticity_token, :commit)
    # end
end