class ApplicationController < ActionController::Base
    layout :layout_by_resource
    protect_from_forgery




    
    def home

    end
    
    private
    def layout_by_resource
      if devise_controller?
        "admin"
      else
        "application"
      end
    end
end
