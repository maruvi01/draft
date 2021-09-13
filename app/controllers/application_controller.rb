class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  # ���̃A�N�V������ǉ�
  def after_sign_in_path_for(resource)
    "/user/#{current_user.id}"
  end

  protected

  # ���̓t�H�[������A�J�E���g������DB�ɕۑ����邽�߂ɒǉ�
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
