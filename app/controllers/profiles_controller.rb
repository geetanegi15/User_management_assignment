class ProfilesController < ApplicationController

   # before_action :set_profile
    def profile_dashboard
        @profile = Profile.find(params[:id]) 
    end
    def index
        @q = Profile.ransack(params[:q])
        @profile = @q.result(distinct: true).page(params[:page])
    end
    def show
        @profile = Profile.find(params[:id])
    end

    def new
        @profile = Profile.new
    end

    def create
        @profile = Profile.new(profile_params)

         if @profile.save
            ProfileNotificationMailer.create_notification(@profile).deliver_now

            redirect_to new_profile_address_path(@profile)
            #render json: { profile: @profile }, status: :created
        else
            render json: @profile.errors, status: :unprocessable_entity
        end
    end

    def edit
        @profile = Profile.find(params[:id])
    end

    def update
        @profile = Profile.find(params[:id])
        
        if @profile.update(profile_params)
            redirect_to profile_path(@profile)
        else
            render :edit
        end
    end

    def destroy
        @profile = Profile.find(params[:id])
        @profile.destroy
        redirect_to profiles_path
    end

    private
    def profile_params
        params.require(:profile).permit(:first_name, :last_name, :mobile_no, :email, :DOB , :activated)
    end

    def set_profile
        @profile = Profile.find(params[:id])
    end
end
