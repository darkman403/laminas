class DproductosController < ApplicationController
  def create
    @dpersonal = Dpersonal.find(params[:dpersonal_id])
    @dproducto = @dpersonal.dproductos.create(dproducto_params)
    redirect_to dpersonal_dproductos_path(@dpersonal)

  end
  def edit
    @dpersonal = Dpersonal.find(params[:dpersonal_id])
    @dproducto = @dpersonal.dproductos.find(params[:id])
      #redirect_to dpersonal_dproductos_path(@dpersonal)
  end

  def update
    @dpersonal = Dpersonal.find(params[:dpersonal_id])
    @dproducto = @dpersonal.dproductos.find(params[:id])
    if @dproducto.update(dproducto_params1)
      redirect_to dpersonal_dproductos_path(@dpersonal)
    else
      render :edit
    end
  end

  def destroy
    @dpersonal = Dpersonal.find(params[:dpersonal_id])
    @dproducto = @dpersonal.dproductos.find(params[:id])
    @dproducto.destroy
      redirect_to dpersonal_dproductos_path(@dpersonal)
  end

  def index
    @dpersonal = Dpersonal.find(params[:dpersonal_id])
    @dproductos = @dpersonal.dproductos.all
    #@dproducto = @dpersonal.dproductos.find(params[:id])
  end

  def show
    @dproducto = Dproducto.find(params[:id])
    @laminas = Lamina.all


    #@dpersonal = Dpersonal.find(params[:dpersonal_id])
    #@dproducto = @dpersonal.dproductos.find(params[:id])

  end

  private
    def dproducto_params
      params.require(:dproducto).permit([:cedula, :poliza, :valaseg, :ciaaseg, :estadoseg, :pdtaseg]
)
    end

    def dproducto_params1
      params.require(:dproducto).permit([:poliza, :valaseg, :ciaaseg, :estadoseg, :pdtaseg]
)
    end

end
