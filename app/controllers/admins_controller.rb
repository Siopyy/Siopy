class AdminsController < ApplicationController
  before_action :must_user!
  before_action :must_admin!
  def index
      @users = User.where(approved: false)
  end

  def update
    @users = User.find(params[:id])
    @users.update_attribute(:approved, true)
    redirect_to administration_path
    flash[:notice] = I18n.t("devise.confirmations.approved")
  end
  
  def admin
    @users = User.find(params[:id])
    @users.update_attribute(:is_admin, true)
    redirect_to administration_path
    flash[:notice] = I18n.t("devise.confirmations.admin")
  end

  def destroy
    @users = User.find(params[:id])
    @users.delete
    redirect_to administration_path
    flash[:notice] = I18n.t("devise.confirmations.deleteuser")
  end


end
