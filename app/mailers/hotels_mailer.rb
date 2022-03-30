class HotelsMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.hotels_mailer.updated.subject
  #
  def updated(hotel)
    @hotel = hotel

    mail to: "to@example.org", subject: "Your hotel details is updated"
  end

  def deleted(hotel_name)
    @hotel_name = hotel_name

    mail to: "to@example.org", subject: "Your hotel details is deleted"
  end
end
