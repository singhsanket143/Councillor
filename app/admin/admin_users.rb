ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation

  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email_contains, :as => :autocomplete, :url => '/admin/admin_users/autocomplete_admin_user_email',
         :label => "Search Email", :required => false,
         :wrapper_html => { :style => "list-style: none" }
  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :email, :as => :autocomplete, :url => autocomplete_admin_user_email_admin_admin_users_path
    end
    f.actions
  end

  collection_action :autocomplete_admin_user_email, :method => :get

  controller do
    autocomplete :admin_user, :email
  end

end
