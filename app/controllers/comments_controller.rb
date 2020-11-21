class CommentsController < ApplicationController
    

def create
@ticket = Ticket.find(params[:ticket_id])
@comment= @ticket.comments.create(params[:comment]).permit(:name, :comment)
redirect_to ticket_path(@ticket)
end

def destroy
end

end
