class TasksController < ApplicationController
  before_action :set_task, only: [:edit, :update, :destroy, :show]

  def index
    @tasks = Task.all
  end

  def show
    # raise
  end

  def new
    @task = Task.new
  end

  def create
    # raise
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @task.update(task_params)
      redirect_to tasks_path(@task)
    else
      render :edit
    end
  end

  def destroy
    @task.destroy

    redirect_to tasks_path
  end

  #   def destroy_all
  #   @tasks.destroy

  #   redirect_to tasks_path
  # end

  private

  def set_task
    # raise
    @task = Task.find(params[:id])

  end

  def task_params
    # params[:restaurant]
    params.require(:task).permit(:title, :details, :completed)
  end

end
