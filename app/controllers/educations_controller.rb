class EducationsController < ApplicationController

    def new 
        @profile = Profile.find(params[:profile_id])
        @education = Education.new
    end

    def create
        @profile = Profile.find(params[:profile_id])
        @education = Education.new(education_params)
            
        if @education.save!
            redirect_to profile_dashboard_path(@profile)
        else
            render json: @profile.errors, status: :unprocessable_entity
        end
    end

    def show
        @education = Education.find(params[:id])
    end

    def edit
        @education = Education.find(params[:id]) 
    end

    def update
        @education = Education.find(params[:id])

        if @education.update(education_params)
            redirect_to education_path(@education)
        else
            render json: @education.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @education = Education.find(params[:id])
        @education.destroy
        redirect_to root_path
    end

    private
    def education_params
        params.require(:education).permit(:institute_name, :university, :course, :stream, :marks, :passed_year, :parsentage)
    end
end
