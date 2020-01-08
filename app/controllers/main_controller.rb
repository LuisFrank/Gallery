class MainController < ApplicationController

    
    def portfolio
        @admin_portfolios = Admin::Portfolio.publicated
        p 'hola'
        puts @admin_portfolios
        p @admin_portfolios.inspect
    end
    
    def beauty
    end

    def fashion
    end

    def commercial
    end

    def jewelry
    end



    def blog
    end

    def contact
    end



end
