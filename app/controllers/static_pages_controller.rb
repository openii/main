class StaticPagesController < ApplicationController
  def home
  	if ingresado?
  		@proyect = usuario_actual.proyects.build 
  		@feed_items = usuario_actual.feed.paginate(page: params[:page])
  	end
  end

  def help
  end

  def acerca_de
  end
  
  def contacto
  end

end
