ActiveAdmin.register Education do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :institute_name, :university, :course, :stream, :marks, :passed_year, :parsentage
  #
  # or
  #
  # permit_params do
  #   permitted = [:institute_name, :university, :course, :stream, :marks, :passed_year, :parsentage]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
