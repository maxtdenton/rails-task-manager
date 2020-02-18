class TasksController < ApplicationController
  before_action :set_task, except: [:index, :new, :create]
  def index
    @tasks = Task.all
  end

  def new
    @tasks = Task.new
  end

  def create
    @task = Task.create(task_params)
    redirect_to tasks_path(@task)
  end

  def show
  end

  def edit
  end

  def update
    @task.update(task_params)
    redirect_to tasks_path(@task)
  end

  def delete
    @task.destroy
    redirect_to tasks_path
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
