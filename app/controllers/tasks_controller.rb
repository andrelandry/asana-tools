class TasksController < ApplicationController
  
  def index
    @tasks = Project.find(params[:project_id]).tasks
    
    respond_to do |format|
      format.json
    end
  end
  
end