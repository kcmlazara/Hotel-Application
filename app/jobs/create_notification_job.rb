class CreateNotificationJob
  include Sidekiq::Job
  queue_as :default

  def perform(hotel_id)
    hotel = Hotel.find(hotel_id)
    title = "Hotel as been created"
    description = "Hotel: #{hotel.name} in #{hotel.country.name} has been created at #{hotel.created_at}."

    Notification.create(
      title: title,
      description: description,
      opened: false
    )
  end
end