class TasksController < ApplicationController
  def all
    @all = Task.all
  end
  def details
    @task = Task.find(params[:id])
  end
  def new
    @new_task = Task.new
  end
  def create
    @created_task = Task.new(task_params)
    @created_task.save
    redirect_to tasks_path(@created_task)
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
