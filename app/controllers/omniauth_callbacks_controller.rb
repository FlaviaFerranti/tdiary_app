class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
    def goolge_oauth2
        @user = User.from_omniauth(request.env['omniauth.auth'])
        flash[:notice] = I18n.t 'devise.omniauth_callbacks.success', kind: 'Google'
        log_in(@user)
        redirect_to @user

end
