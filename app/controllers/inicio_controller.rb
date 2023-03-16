class InicioController < ApplicationController
  def index

       if params[:ced].present?
         @cedula = Dpersonal.find_by cedula: (params[:ced])
          if @cedula.present?
               redirect_to dpersonal_path(@cedula.id)
             else
               inicio_index_path
             end
        end


       if params[:adm].present?
         @adm = params[:adm]
               if @adm=='administrador'
                redirect_to dpersonals_path
                else
                inicio_index_path
                end
       end

    @cedu =  Dpersonal.all
   end
end
