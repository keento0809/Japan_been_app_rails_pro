module PrefecturesHelper

    def set_prefectures
        @prefectures = Prefecture.all
        @prefecture = @prefectures.find(params[:id])
      end
end
