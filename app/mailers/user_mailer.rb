class UserMailer < ApplicationMailer

  def account_activation(user)
    @user = user
    mail to: user.email, subject: "Account activation"
  end
  
  def account_activation(user)
    @user = user
    mail to: user.email, subject: "Account activation"
  end

  # パスワード再設定の属性を設定する
  def create_reset_digest
    self.reset_token = User.new_token
    update_attribute(:reset_digest,  User.digest(reset_token))
    update_attribute(:reset_sent_at, Time.zone.now)
  end

  def password_reset(user)
    @user = user
    mail to: user.email, subject: "Password reset"
  end
end
