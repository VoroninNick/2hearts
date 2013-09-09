class ContactMailer < ActionMailer::Base
  default from: "support@voroninstudio.eu"
  default to: "two.hearts.wed@gmail.com"

  def new_message(contact)
    @contact = contact
    mail(:subject => "New message from wed.in.ua!")
  end
end
