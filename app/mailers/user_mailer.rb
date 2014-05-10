class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def confirmation_message(user)
  	mail(:to => user.email, :subject => "Vid55 - CZani Tech - Confirmation Email")
  end

  def confirmation_contact_message(message)
  	mail(:to => message.email, :subject => "Email from Vid55 CZani Tech",
  		:body => message.message)
  end

end
