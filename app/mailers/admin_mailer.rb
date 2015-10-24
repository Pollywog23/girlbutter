class AdminMailer < ApplicationMailer

  default from: "girlbutterserver@gmail.com"

  def contact_email(name, email, phone, body)
    @name = name
    @email = email
    @phone = phone
    @body = body
    mail(to:'marshasclark23@gmail.com')
  end

end
