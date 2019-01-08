class MemosController < ApplicationController
  before_action :set_memos
  before_action :set_memo, only: [:show, :edit, :update, :destroy]

  # GET users/1/memos
  def index
    @memos = @user.memos
  end

  # GET users/1/memos/new
  def new
    @memo = @user.memos.build
    @submit = "保存する"
  end

  # GET users/1/memos/1/edit
  def edit
    @submit = "更新する"
  end

  # POST users/1/memos
  def create
    @memo = @user.memos.build(memo_params)

    if @memo.save
      redirect_to(user_memos_path(@user), notice: 'Memo was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT users/1/memos/1
  def update
    if @memo.update_attributes(memo_params)
      redirect_to(user_memos_path(@user), notice: 'Memo was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE users/1/memos/1
  def destroy
    @memo.destroy

    redirect_to user_memos_url(@user)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_memos
      @user = User.find(params[:user_id])
    end

    def set_memo
      @memo = @user.memos.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def memo_params
      params.require(:memo).permit(:user_id, :text)
    end
end
