class DpersonalsController < ApplicationController
  def index
    @dpersonals = Dpersonal.all
  end

  def new
    @dpersonal = Dpersonal.new
  end
  def create
    #render plain: params[:dpersonal].inspect
    @dpersonal = Dpersonal.new(dpersonal_permit)
      if @dpersonal.save
          redirect_to dpersonals_path
        else
          render 'new'
        end
  end

  def edit
      @dpersonal = Dpersonal.find(params[:id])
  end
  def update
    @dpersonal = Dpersonal.find(params[:id])
    if @dpersonal.update(dpersonal_permit)
      redirect_to @dpersonal
    else
      render :edit
    end
  end

  def show
    @dpersonal = Dpersonal.find(params[:id])

  end

    def destroy
      @dpersonal = Dpersonal.find(params[:id])
      @dpersonal.destroy
      redirect_to dpersonal_path
    end

  private
  def dpersonal_permit
    params.require(:dpersonal).permit(:cedula, :nombre, :genero, :email, :pais, :departamento, :ciudad, :direccion)
  end

end
