class TasksController < ApplicationController
  def index
    # this is the list page of all tasks
    @tasks = Task.all
  end

  def new
    # form for adding a new task
    @task = Task.new
  end

  def create
    # take the info from the form and add it to the DB
    @task = Task.new(task_params)
    # save to the DB
    @task.save
    # redirect back to home
    redirect_to root_path
  end

  def show
    @task = Task.find(params[:id])
  end

  def destroy
    # find the individual task
    @task = Task.find(params[:id])
    # destroy
    @task.destroy
    # redirect back to home
    redirect_to root_path
  end

  def edit
    # find the individual task
    @task = Task.find(params[:id])
  end

  def update
    # find the individual task
    @task = Task.find(params[:id])
    # update with new info on form
    @task.update(task_params)
    # redirect to task view
    redirect_to task_path(@task)
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
