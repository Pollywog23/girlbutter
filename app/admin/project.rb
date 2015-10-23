ActiveAdmin.register Project do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :title, :description, :published, :image, :photos_attributes => [:id, :title, :image]

   index do
    selectable_column
    column :title
    column :published
    actions
  end


  show do
    attributes_table do
      row :title
      row :description, input_html:{class: 'redactor'}
      row :published
      row :created_at
      row :updated_at
      row :image do
        image_tag project.image.url(:medium)
      end
    end
    active_admin_comments
  end

  form do |f|
    f.inputs "Project" do 
      f.input :title
      f.input :description, input_html:{class: 'redactor'}
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
