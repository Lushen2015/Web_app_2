class TicketsController < ApplicationController

    def index
        @tickets=Ticket.all.order("created_at DESC") #A new variable object to store all the entries in the database in descending order
    end

    #The NEW action calls up the template that will allow you to input a new ticket
    def new
     @ticket = Ticket.new #@tickets is the variable and Ticket is pointing to the Model file that containts our database config, we are telling it to create a new entry
    end 

    #The CREATE function is connected to the NEW function above only this has to do with when you click create
    def create 
      @ticket = Ticket.new(ticket_params)  #This is very similar to above but instead of making a blank spot, we are recording whatever was typed in those fields on the screen
        
      if @ticket.save #Once the CREATE button is clicked, it checks the database if the values were actually saved onto the database
        redirect_to @ticket #if it was then stay where you are

      else
        render 'new' #If for some reason, it was not able to save to the db, show the new page where the fields are blank so that you can do over
      end 
    end


    def show
        @ticket = Ticket.find(params[:id]) #This now looks in the Ticket model with the ID given to the requested ticket and pulls it up from the database
        #The ID is usually seen on the browser like "127.0.0.1:3000/tickets/show/45 where 45 is the ID"
    end


    private
    #This is the method, private to this file only I presume, that does a security check and allows you to pass through the specific fields you want to come through to your db
    #It is used as the parameters of the new function in CREATE
    def ticket_params
        params.require(:ticket).permit(:student_id,:fault) #The :ticket here refers to the Model, not the @tickets variable mentioned above
    end

end
