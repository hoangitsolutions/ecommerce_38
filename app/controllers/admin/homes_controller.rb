module Admin
  class HomesController < ApplicationAdminsController
    layout "application_admin"

    def home
      render :"layouts/admin/pages_root/home"
    end
  end
end
