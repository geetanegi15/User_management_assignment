class AddressesController < ApplicationController
    
    def new
        @profile = Profile.find(params[:profile_id])
        @addresses = Address.new
    end

    def create
        @profile = Profile.find(params[:profile_id])
        @address = @profile.addresses.new(address_params)

        if @address.save!
            redirect_to profile_path(@profile)
        else
            render json: @address.errors.full_messages
        end
    end

    def edit
        @profile = Profile.find(params[:profile_id])
        @address = @profile.addresses
    end

    def update
        @profile = Profile.find(params[:profile_id])
        @address = @profile.addresses
        
        if @address.update(address_params)
            redirect_to profile_path(@profile)
        else 
            render :edit
        end
    end

    def destroy
        @profile = Profile.find(params[:profile_id])
        @address = @profile.addresses.find(params[:id])
        @address.destroy
        redirect_to profile_path
    end

    private
    def address_params
        params.require(:address).permit(:parmanent_address , :residencial_address,:city, :state, :pin)
    end
end
