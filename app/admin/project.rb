ActiveAdmin.register Project do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :title, :description, :published, :image


  form do |f|
      f.inputs "Project" do 
        f.input :title
        f.input :description
        f.input :image, :as => :file
        f.input :published
      end

      f.actions
    end

#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
