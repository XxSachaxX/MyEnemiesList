class ListsController < ApplicationController
  def index
    @user = current_user
    @lists = policy_scope(@user.lists)
  end

  def show
    @user = current_user
    @list = List.find_by(user_id: @user.id, id: params[:id])
    authorize @list
  end

  def new
    @list = List.new
    authorize @list
  end

  def create
    @list = List.new(list_params)
    @list.user = current_user
    if @list.save!
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
    authorize @list
  end

  def edit
    @user = current_user
    @list = List.find_by(id: params[:id])
    authorize @list
  end

  def destroy
    @list = List.find(params[:id])
    if @list.destroy
      redirect_to lists_path, status: :see_other
    end
    authorize @list
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
