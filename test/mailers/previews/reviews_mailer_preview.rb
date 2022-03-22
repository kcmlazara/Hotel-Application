# Preview all emails at http://localhost:3000/rails/mailers/reviews_mailer
class ReviewsMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/reviews_mailer/submitted
  def submitted
    ReviewsMailer.submitted Review.first
  end

end
