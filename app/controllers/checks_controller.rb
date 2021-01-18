class ChecksController < ApplicationController
    before_action :set_order, only: [:show, :edit, :update, :destroy]
    # before_action :check_string, only: [:create, :update]

  def index
    @checks = Check.all
  end
  
  def new
    @check = Check.new
  end

  def create
    @check = Check.new(prefecture_name_params)
    if @check.save
        flash[:success] = 'Success to check!'
        redirect_to root_url
    else
        render 'new'
    end
  end

  def edit

  end

  def update
    if @check.updated
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

    def prefecture_name_params
        params.permit(prefecture_name: [])
    end

    def check_string
        params[:check][:prefecture_name] = params[:check][:prefecture_name].join("/") # to string
    end

end
