class TasksController < ApplicationController

  def index
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :start_at, :finish_at)
  end
end
