class PagesController < ApplicationController
  def bienvenido

  	@tareas = Tarea.all
  	@numerotarea = Tarea.all.count

  end
end
