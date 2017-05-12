class RegistrationsController < Devise::RegistrationsController
  before_action :authenticate_admin!, only: [:new, :create]
  skip_before_action :require_no_authentication,


  def update
    new_params = params.require(:student).permit(:first_name, :last_name, :email, :current_password, :password, :password_confirmation, :cohort_id)
    change_password = true
    if params[:student][:password].blank?
      params[:student].delete("password")
      params[:student].delete("password_confirmation")
      new_params = params.require(:student).permit(:first_name, :last_name, :email, :cohort_id)
      change_password = false
    end

    @user = Student.find(current_student.id)
    is_valid = false

    if change_password
      is_valid = @user.update_with_password(new_params)
    else
      is_valid = @user.update_without_password(new_params)
    end

    if is_valid
      set_flash_message :notice, :updated
      sign_in @user, :bypass => true
      redirect_to after_update_path_for(@user)
    else
      render "edit"
    end

  private

  def sign_up(resource_name, resource)
    true
  end
  end
