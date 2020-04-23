class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
    # @task = Task.find_by(id: params[:id])
  end

  def new
    @task = Task.new
  end

  def edit
    # @task = Task.find_by(id: params[:id])
  end

  def update
    # @task = Task.find_by(id: params[:id])

    if @task.update(task_params)
      redirect_to tasks_url, notice: "タスク 「#{@task.name}」を更新しました。"
    else
      render :edit
    end
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      redirect_to tasks_url, notice: "タスク「#{@task.name}」を登録しました。"
    else
      render :new
    end
  end

  def destroy
    # @task = Task.find_by(id: params[:id])
    @task.destroy!
    redirect_to tasks_url, notice: "タスク「#{task.name}」を削除しました。"
  end



  private

  def set_task
    @task = Task.find_by(id: params[:id])
  end

  def task_params
    params.require(:task).permit(:name, :description)
  end
end
