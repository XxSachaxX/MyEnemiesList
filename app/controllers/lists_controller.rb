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
    @list = List.new(user_id: current_user.id, name: params[:name])
    if @list.save!
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
    authorize @list
  end

  def edit
    @user = current_user
    @list = List.find_by(user_id: @user.id, id: params[:id])
    authorize @list
  end
end
