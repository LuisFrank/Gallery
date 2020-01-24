class MainController < ApplicationController

    
    def portfolio
        @admin_portfolios = Admin::Portfolio.publicated
        p 'hola'
        puts @admin_portfolios
        p @admin_portfolios.inspect
    end
    
    def beauty
        @admin_beauties = Admin::Beauty.publicated
    end

    def fashion
        @admin_fashions = Admin::Fashion.publicated
    end

    def commercial
        @admin_commercials = Admin::Commercial.publicated
    end

    def jewelry
        @admin_jewelries = Admin::Jewelry.publicated
    end

    def services
    end

    def contact
        @contact = Contact.new
    end
   
    def create_contact
        @contact = Contact.new
        @contact.name = params[:contact][:name]
        @contact.email = params[:contact][:email]
        @contact.message = params[:contact][:message]
        @contact.active = true
        respond_to do |format|
          if @contact.save
      
            # Sends email to user when user is created.
            ApplicationMailer.contact_email(@contact).deliver
      
            format.html { redirect_to main_contact_path, notice: 'User was successfully created.' }
            format.json { render :show, status: :created, location: @contact }
          else
            format.html { render :new }
            format.json { render json: @contact.errors, status: :unprocessable_entity }
          end
        end
    end

    def bio
    end

  



end
