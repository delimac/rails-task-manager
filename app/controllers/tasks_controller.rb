class TasksController < ApplicationController
  def index
    # this is the list page of all tasks
    @tasks = ["Buy milk", "Do laundry", "Pay bills online"]
  end

  def new
    @task = Task.new
  end
end
