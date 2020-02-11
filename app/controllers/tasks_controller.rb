class TasksController < ApplicationController
  # ================== Create ================
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path
  end

  # =================== Read =================
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  # ================== Update ================
  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
  end

  # ================== Destroy ===============
  def destroy
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
