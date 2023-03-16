class LaminasController < ApplicationController
  def new
    @lamina = Lamina.new
  end

  def create
    #  render plain: params[:laminas].inspect
    #@lamina = Lamina.new(params[:lamina])
      @lamina = Lamina.create(lamina_permit)
        if @lamina.save
            redirect_to @lamina
          else
            render 'new'
          end
    end

    def show
      @lamina = Lamina.find(params[:id])
    end
    def index
      @laminas = Lamina.all
    end
    def edit
      @lamina = Lamina.find(params[:id])
    end
    def update
      @lamina = Lamina.find(params[:id])
      if @lamina.update(lamina_permit)
        redirect_to @lamina
      else
        render :edit
      end
    end

    def destroy
      @lamina = Lamina.find(params[:id])
      @lamina.destroy
      redirect_to lamina_path
    end


  private
  def lamina_permit
    params.require(:lamina).permit(:lamref, :lamnombre, :photo)
  end

end
