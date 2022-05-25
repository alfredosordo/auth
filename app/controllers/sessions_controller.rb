class SessionsController < ApplicationController


def new
end

def create
    # Step 1: check to see if there's a user with the email that was provided
    @user = User.find_by({ "email" => params["email"]})
    if @user 
    # Step 1a: if yes, check the password (go to Step 2)
    # Step 2: check the password to see if it matches the user's password
            if params["password"] == @user["password"]
    # Step 2a: if yes, go to company's page
            flash["notice"] = "You're in!"
            redirect_to "/companies"
            else
    # Step 2b: if no, go back to the login page
            redirect_to "/sessions/new"
            flash["notice"] = "Incorrect credentials"
            end
    else
    # Step 1b: if no, go back to the login page
    redirect_to "/sessions/new"
    flash["notice"] = "Incorrect credentials"
    end
end


end