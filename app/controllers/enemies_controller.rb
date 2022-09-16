class EnemiesController < ApplicationController
  before_action :set_list, only: %i[create new update]
  before_action :set_enemy, only: %i[edit destroy update]

  def new
    @enemy = Enemy.new
    @enemy.list = @list
    authorize @enemy
  end

  def create
    @enemy = Enemy.new(enemy_params)
    @enemy.list = @list
    if @enemy.save!
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
    authorize @enemy
  end

  def edit
  end

  def update
    @enemy.update(enemy_params)
    redirect_to list_path(@list)
  end

  def destroy
    @list = @enemy.list
    @enemy.destroy
    redirect_to list_path(@list), status: :see_other
    authorize @enemy
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end

  def set_enemy
    @enemy = Enemy.find(params[:id])
  end

  def enemy_params
    params.require(:enemy).permit(:name, :grudge)
  end
end
