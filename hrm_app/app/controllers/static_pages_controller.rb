class StaticPagesController < ApplicationController
  before_action :admin_user, only: :home
  def home
    redirect_to 'https://hrm1-cookiemonster2.c9users.io/users/sign_in'
  end

  def admin_user
    redirect_to('https://hrm1-cookiemonster2.c9users.io/members') unless current_user.admin?
  end

  def help
  end

  def about
  end

  def contact
  end
end
