class ReviewsMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.reviews_mailer.submitted.subject
  #
  def submitted(review)
    @review = review

    mail to: "to@example.org", subject: "New Review in your Post"
  end
end
