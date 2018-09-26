ActiveAdmin.register User do
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
#

  # filter :batch_code, :as => :select, input_html: { multiple: true }, :collection => Batch.all
  index do
    selectable_column
    id_column
    column :email
    column :name
    column :enrollment_no
    actions
  end

  controller do
    def permitted_params
      params.permit!
    end
  end

end
