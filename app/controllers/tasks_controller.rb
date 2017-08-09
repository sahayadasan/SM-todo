class TasksController < ApplicationController
 def index
      @task = Task.new()
      @tasks = Task.order(id: :desc)
      
  end
  
  def create
     t= Task.new(params[:task].permit(:title, :due, :is_complete, :priority, :category))
      t.save
      redirect_to tasks_url
  end
  
  def new
  end
  
  def edit
  end
  
  def show
  end
  
  def update
  end
  
  def destroy
  end
 end