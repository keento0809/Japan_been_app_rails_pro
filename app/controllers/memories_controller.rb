class MemoriesController < ApplicationController
    before_action :set_memory, only: [:show, :edit, :update]
    # before_action :set_edit_memory, only: [:edit]

  def index
    @memories = Memory.all
  end

  def new
    @memory = Memory.new
  end

  def create
    @memory = Memory.new(memory_params)
    if @memory.save
        flash[:success] = 'Success to Memorize!'
        redirect_to root_url
    else
        # flash[:danger] = 'failed!'
        render 'new'
    end
  end

  def show

  end


  def edit
    unless @memory.user_id == current_user.id
        redirect_to root_url
    end
  end

  def update
    # @memory = Memory.find(params[:id])
    if @memory.user_id != current_user.id
        flash[:danger] = 'This is not your memory.'
        redirect_to root_url
    else
        if @memory.update(update_memory_params)
            flash[:success] = 'Success to update!'
            redirect_to root_url
        else
            render 'edit'
        end
    end
  end

  def destroy

  end


  private
    def set_memory
        # Memory.find_byに変更するとuser.nameとprefecture.nameが固定されてしまう。原因不明
        @memory = Memory.find(params[:id])
    end

    def set_edit_memory
        # ログインしているユーザーのmemoryを取り出す条件式が必要
        @memory = Memory.find(params[:prefecture_id])
    end

    def memory_params
        # create時はrequire(:memory)を付けるとエラーになる。原因不明
        params.permit(:user_id, :prefecture_id, :prefecture_name, :comment, :img)
    end

    def update_memory_params
        # update時には逆にrequire(:memory)が必要となる。よく分からん
        params.require(:memory).permit(:img, :comment)
    end
end
