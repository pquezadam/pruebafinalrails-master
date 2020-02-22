class CompletedsController < ApplicationController
  before_action :authenticate_user!

  def create
    @todo = Todo.find(params[:todo_id])
    @completed = Completed.new(todo: @todo, user: current_user)
    if @completed.save
      redirect_to todos_path, notice: 'La tarea fue completada'
    else
      redirect_to todos_path, alert: 'Tarea incompleta'
    end
  end
end

    def index
      @completeds = current_user.completeds
    end
end