ActiveAdmin.register Batch do
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
  controller do
    def permitted_params
      params.permit!
    end
  end

  index do
    selectable_column
    id_column
    column "Batch Code" do |a|
      a
    end
    column :academic_year
    column :semester
    actions
  end


  # form do |f|
  #   f.inputs "Batch" do
  #     f.input :academic_year_id, :as => :select, :collection => AcademicYear.all.collect {|a| [a.start_year.to_s+ '-' +a.end_year.to_s] }
  #     f.input :semester_id, :as => :select, :collection => Semester.all.collect{|s| [s.sem]}
  #     f.input :batch_code, :as => :select, :collection =>[1,2,3,4,5,6,7,8,9,11,11,12,13]
  #   end
  #   f.actions
  # end


end
