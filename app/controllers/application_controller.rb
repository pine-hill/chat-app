class ApplicationController < ActionController::Base
  #サインアップの画面に遷移
  before_action :authenticate_user!
  #ユーザーの名前をDBに保存
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end