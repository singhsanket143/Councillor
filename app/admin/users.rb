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

  batch_action :email, form: {subject: :text, message: :textarea}, confirm: "Please enter the subject and the message below" do |ids, inputs|
    batch_action_collection.find(ids).each do |user|
      ContactBatchMailer.contact_batch_email(user.name, 'your_address_to_reply_to@example.com', inputs[:message], inputs[:subject], user.email).deliver
    end
    redirect_to collection_path, notice: "The batch email has been sent to all the users you selected."
  end

  controller do
    def permitted_params
      params.permit!
    end
  end

end
