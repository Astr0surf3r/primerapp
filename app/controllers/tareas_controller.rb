class TareasController < ApplicationController
  
  def index

  	@tareas = Tarea.all
  	@numerotarea = Tarea.count

  end
end
