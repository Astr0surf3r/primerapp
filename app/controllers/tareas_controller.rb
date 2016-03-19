class TareasController < ApplicationController
  
  def index

  	@tareas = Tarea.all
  	@numerotarea = Tarea.count

  end

  def new
  	@tarea = Tarea.new
  end

  def create

  	@tarea = Tarea.new(tarea_params)

  	if @tarea.save
  		redirect_to root_path
  	else
  		render 'new'
  	end
  end

  private

  def tarea_params

  	params.require(:tarea).permit(:contenido)
  
  end
end
