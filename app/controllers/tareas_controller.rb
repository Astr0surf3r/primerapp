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

  def show
      
      @tarea = Tarea.find(params[:id])

  end

  def edit
      
      @tarea = Tarea.find(params[:id])

  end

  def update

      @tarea = Tarea.find(params[:id])

      @tarea.update_attributes(tarea_params)

      redirect_to root_path
      
  end

  def destroy

  	@tarea = Tarea.find(params[:id])

  	@tarea.destroy

  	redirect_to root_path

  end

  private

  def tarea_params

  	params.require(:tarea).permit(:contenido, :user_id)
  
  end
end
