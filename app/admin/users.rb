ActiveAdmin.register User do

 permit_params :address_line1, :address_line2, :city, :state, :zipcode, :country, :neighborhoodname, :profile_image, :user_type, :first_name, :email, :password
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
