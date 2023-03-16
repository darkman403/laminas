class SolicitudsController < ApplicationController
  def new
    @dproducto = Dproducto.find(params[:dproducto_id])
    #@solicitud = @dproducto.solicituds.new
    @solicitud = @dproducto.solicituds
    @laminas = Lamina.all
    #Carga el catalogo de láminas en new
    @personal = Dpersonal.find_by cedula: (@dproducto.cedula)
    #localiza el id de la cedula en dpersonal para link de volver al inicial del cliente
  end

  def create
    @dproducto = Dproducto.find(params[:dproducto_id])
    @solicitud = @dproducto.solicituds.create(solicitud_permit)

      redirect_to new_dproducto_solicitud_path(@dproducto)

  end

  def index
    @dproducto = Dproducto.find(params[:dproducto_id])
    @solicitud = @dproducto.solicituds
    @laminas = Lamina.all
    #Carga el catalogo de láminas en new
    @personal = Dpersonal.find_by cedula: (@dproducto.cedula)
    #localiza el id de la cedula en dpersonal para link de volve
  end

  def destroy
      @dproducto = Dproducto.find(params[:dproducto_id])
      @solicitud = @dproducto.solicituds.find(params[:id])
      @solicitud.destroy
       redirect_to new_dproducto_solicitud_path(@dproducto)

    end

  def show

  end

  def edit

  end

  def createback
    @dproducto = Dproducto.find(params[:dproducto_id])
    @solicitud = @dproducto.solicituds.create(solicitud_permit)
    redirect_to dproducto_solicituds_path(@dproducto)
  end

  def destroyback
    #@dproducto = Dproducto.find(params[:dproducto_id])
    @solicitud = Solicitud.find(params[:id])
    @solicitud.destroy
      redirect_to dproducto_solicituds_path(@dproducto)
  end


    private
    def solicitud_permit
    params.require(:solicitud).permit([:cedula, :lamref, :lamnombre, :carta, :empaque, :enviadoen])
    end

end
