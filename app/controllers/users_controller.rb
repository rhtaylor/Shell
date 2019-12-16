class UsersController < ApplicationController 
    def index 
    end 
    def show  
        @user = User.find(params[:id])
    end 
    def new 
     @user = User.new 
    end 
    def create  
        
        @user = User.new(safe_params(:name, :email, :phone_number))
        if @user.valid? 
           @user.save
            redirect_to user_path(@user) 
        else 
            render :new  
        end
   
    end 
private 
    def safe_params(*args)
         params.require(:user).permit(*args)
    end
end
