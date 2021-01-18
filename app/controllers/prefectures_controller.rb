class PrefecturesController < ApplicationController
    before_action :set_search
    # before_action :set_prefecture

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
#   def update_been
#     if params[:checkbox] == "true"
#         prefecture = Prefecture.where(params[:checkbox])
#         prefecture.checkbox = true
#         prefecture.save
#         prefecture.update(been_params)
#         redirect_to root_url
    # elsif params[:checkbox] == " "
    #     prefecture = Prefecture.where(params[:checkbox])
        
    #     # prefecture.save(been_params)
    #     prefecture.update(been_params)
    #     redirect_to root_url
#     else
#         render 'prefectures/index'
#     end
#   end

#   def update_been
#     @prefecture = Prefecture.where(params[:checkbox])
#     # if params[:checkbox] == 1
#     #     @prefecture.checkbox = true
#     # end
#     # @prefectures = Prefecture.all
#     if  @prefecture.update(been_params)
#         # @prefecture = true
#         redirect_to prefectures_path, notice: 'Success!'
#     end
#   end

#   def update_been
#     @prefecture = Prefecture.all.where(params[:checkbox])
#     if  params[:checkbox] == 1
#         @prefecture.checkbox = true
#         @prefectures.save
#         # @prefecture = true
#         redirect_to 'root'
#     end
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