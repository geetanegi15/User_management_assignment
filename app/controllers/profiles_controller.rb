class ProfilesController < ApplicationController

    def show
        @profile = Profile.find(params[:id])
    end

    def new
        @profile = Profile.new
    end

    def create
        @profile = Profile.new(profile_params)

         if @profile.save
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
        redirect_to root_path
    end

    private
    def profile_params
        params.require(:profile).permit(:first_name, :last_name, :mobile_no, :email, :DOB , :activated)
    end

    def set_profile
        @profile = Profile.find(params[:id])
    end
end
