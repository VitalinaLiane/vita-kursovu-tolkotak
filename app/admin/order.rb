ActiveAdmin.register Order do
  controller do
    def permitted_params
      params.permit order: [:name, :email, :akey,                             
                            :able]
    end
  end
end


      


