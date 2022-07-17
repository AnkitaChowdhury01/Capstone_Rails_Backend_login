class LoginCoachController < ApplicationController
    def login

        if request.post?
    
          @coach = User.authenticate(params[:coach_id],params[:password])
    
          if @coach
    
          session[:coach]=@coach.id
    
          flash[:notice]="You are logged in!"
    
             
    
          else
    
            flash[:notice]="COACH_NOT_FOUND"
    
            render :action=>:login
    
          end
    
         end
    
      end  
    
        private
    
          def user_params
    
              params.permit(:coach_id, :password)
    
          end
end
