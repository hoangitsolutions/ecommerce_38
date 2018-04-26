class AuthsController < ApplicationController
  def login
    render :"auth/login/login"
  end

  def register
    render :"auth/register/register"
  end

  def password_reset
    render :"auth/password_reset/send_email"
  end

  def update_password_reset
    render :"auth/password_reset/update_password"
  end
end
