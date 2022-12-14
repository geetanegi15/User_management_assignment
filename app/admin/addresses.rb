ActiveAdmin.register Address do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :parmanent_address, :residencial_address, :city, :state, :pin, :profile_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:parmanent_address, :residencial_address, :city, :state, :country, :pin, :profile_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
