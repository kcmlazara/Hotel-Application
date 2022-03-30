# Preview all emails at http://localhost:3000/rails/mailers/hotels_mailer
class HotelsMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/hotels_mailer/updated
  def updated
    HotelsMailer.updated Hotels.First
  end

  def deleted
    HotelsMailer.deleted Hotels.First
  end

end
