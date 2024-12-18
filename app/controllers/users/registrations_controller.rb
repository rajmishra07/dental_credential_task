# # frozen_string_literal: true

# class Users::RegistrationsController < Devise::RegistrationsController
#   # before_action :configure_sign_up_params, only: [:create]
#   # before_action :configure_account_update_params, only: [:update]

#   # GET /resource/sign_up
#   # def new
#   #   super
#   # end

#   # POST /resource
#   def create
#     @user = User.new(user_params)

#     respond_to do |format|
#       if @user.save
#         UserMailer.welcome_email(@user).deliver_now
#         format.html { redirect_to user_url(@user), notice: "User was successfully created. An email has been sent" }
#         format.json { render :show, status: :created, location: @user }
#       else
#         format.html { render :new, status: :unprocessable_entity }
#         format.json { render json: @user.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   # GET /resource/edit
#   # def edit
#   #   super
#   # end

#   # PUT /resource
#   # def update
#   #   super
#   # end

#   # DELETE /resource
#   # def destroy
#   #   super
#   # end

#   # GET /resource/cancel
#   # Forces the session data which is usually expired after sign
#   # in to be expired now. This is useful if the user wants to
#   # cancel oauth signing in/up in the middle of the process,
#   # removing all OAuth session data.
#   # def cancel
#   #   super
#   # end

#   # protected

#   # If you have extra params to permit, append them to the sanitizer.
#   # def configure_sign_up_params
#   #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
#   # end

#   # If you have extra params to permit, append them to the sanitizer.
#   # def configure_account_update_params
#   #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
#   # end

#   # The path used after sign up.
#   # def after_sign_up_path_for(resource)
#   #   super(resource)
#   # end

#   # The path used after sign up for inactive accounts.
#   # def after_inactive_sign_up_path_for(resource)
#   #   super(resource)
#   # end

#   private
#   def user_params
#     params.require(:user).permit(:email, :password, :password_confirmation)
#   end
# end


class Users::RegistrationsController < Devise::RegistrationsController
  # POST /resource
  def create
    @user = User.new(user_params)
    
    respond_to do |format|
      if @user.save
        UserMailer.welcome_email(@user).deliver_now
        sign_up(resource_name, @user)
        format.html { redirect_to root_path, notice: 'User was successfully created. An email has been sent.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
