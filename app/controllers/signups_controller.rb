class SignupsController < ApplicationController
    # before_filter :authorize
    before_action :authorize, only: [:show, :index, :destroy, :edit]

    def index
        @signups = Signup.all
    end

    def show
        @signup = Signup.find(params[:id])
    end

    def new
    end

    def create
      @signup = Signup.new(signup_params)
 
      @signup.save
      flash.alert = 'Successfully signed up'
      redirect_to "/"
    end

    def edit
      @signup = Signup.find(params[:id])
    end

    def update
      @signup = Signup.find(params["id"])
   
      if @signup.update(params["signup"].permit(:name, :email, :message))
        redirect_to signup_path
      else
        render 'edit'
      end
    end

    def destroy
      @signup = Signup.find(params[:id])
      @signup.destroy
     
      redirect_to signups_path
    end

    private
        def signup_params
            params.require(:signup).permit(:name, :email, :message)
        end
end
