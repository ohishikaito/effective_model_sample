class TasksController < ApplicationController

  def index
    @task = Task.new
    @tasks = Task.all.where('start_at > ?', Time.zone.now).order(start_at: :asc)
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :content, :start_at, :finish_at, :kind)
  end
end
